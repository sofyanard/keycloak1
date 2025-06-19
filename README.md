# ASP.NET Core MVC with Keycloak Authentication

This project is a simple ASP.NET Core MVC application integrated with Keycloak for authentication.

## Getting Started

1. **Configure Keycloak**: Set up a realm, client, and user in your Keycloak server.
2. **Configure the application**: Update `appsettings.json` with your Keycloak settings.
3. **Run the application**:
   ```sh
   dotnet run
   ```

## Keycloak Integration
- Uses OpenID Connect (OIDC) middleware for authentication.
- Protects controllers/actions with `[Authorize]` attribute.

## Customization
- Update views and controllers as needed for your use case.

---

For more details, see the official documentation:
- [ASP.NET Core Authentication](https://learn.microsoft.com/en-us/aspnet/core/security/authentication/)
- [Keycloak Documentation](https://www.keycloak.org/documentation)
