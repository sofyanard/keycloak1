# Use the official .NET SDK image for build
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Copy csproj and restore as distinct layers
COPY keycloak1.csproj ./
RUN dotnet restore ./keycloak1.csproj

# Copy the rest of the source code
COPY . .

# Build the application
RUN dotnet publish ./keycloak1.csproj -c Release -o /app/publish --no-restore

# Use the official ASP.NET runtime image for the final stage
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

# Expose port 8080
EXPOSE 8080

# Set the entrypoint
ENTRYPOINT ["dotnet", "keycloak1.dll"]
