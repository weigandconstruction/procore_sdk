# Procore API Client for Elixir

**This library is under active development is not suitable for production use.**

Unofficial Procore API SDK for Elixir.

## Installation

The package can be installed by adding `procore_sdk` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:procore_sdk, "~> 0.2"}]
end
```

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :procore_sdk, base_url: "https://api.procore.com"
```

Or you can set `PROCORE_SDK_BASE_URI` in your environment.

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`Procore.Connection.new/1`:

```elixir
client = Procore.Connection.new(base_url: "https://api.procore.com")
```

## Usage

Documentation can be found at https://hexdocs.pm/procore_sdk.

### Authentication

Follow the Procore documentation to [set up a new app](https://developers.procore.com/documentation/building-data-connection-apps) and install it into your company with appropriate permissions.

You may then generate your Client ID and Client Secret.

> Note: as of May 30, 2024, the app management UI may show "App is set to Authorization Code Grant Type". If the app is properly installed, these credentials will work with the `client_credentials` grant type.

Fetch an access token:

```elixir
{:ok, %{access_token: access_token}} =
  Procore.Connection.new()
  |> Procore.Api.AuthenticationOAuth20Authentication.oauth_token_post(%{
    grant_type: "client_credentials",
    client_id: System.get_env("PROCORE_CLIENT_ID"),
    client_secret: System.get_env("PROCORE_CLIENT_SECRET")
  })
```

Make an API request:

```elixir
connection = Procore.Connection.new(access_token: access_token)
{:ok, result} = Procore.Api.CorePortfolioProjects.rest_v11_projects_get(connection, procore_company_id, company_id)
```

## Development

This SDK is automatically generated from the Procore OpenAPI spec. Very few files are manually edited. A list of these files is found in `.openapi-generator-ignore`.

## Generating SDK

This SDK uses [openapi-generator](https://openapi-generator.tech/). Docker must be running on the machine used to build the SDK.

The OpenAPI Spec (OAS) can be downloaded from the dropdown on the [Procore REST API Overview page](https://developers.procore.com/reference/rest/v1/docs/rest-api-overview).

To generate a new version of this SDK:

1. Generate the library with:
   ```bash
   # From the project root directory
   docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli:v7.8.0 generate \
       -i https://developers.procore.com/api/v1/resource_groups/full_oas?version=1 \
       -g elixir \
       -o /local \
       -c /local/config.json
   ```
2. Ensure that files are formatted with `mix format`

In the future this process will be automated through CI.
