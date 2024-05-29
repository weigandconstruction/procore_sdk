# Procore API Client for Elixir

Unofficial Procore API SDK for Elixir.

## Installation

The package can be installed by adding `procore_sdk` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:procore_sdk, "~> 0.1"}]
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

Documentation can be found at [https://hexdocs.pm/procore_sdk][docs].

## Development

This SDK is automatically generated from the Procore OpenAPI spec. Do not manually edit files.

## Generating SDK

This SDK uses a patched version of [openapi-generator](https://openapi-generator.tech/) that is available at [this fork](https://github.com/ntodd/openapi-generator/tree/ntodd/feature/elixir-improvements). Until these changes are merged back into the main project, generate files with the included jar. Java is required on the system running this generator.

To generate a new version of this SDK:

1. Download the OpenAPI Spec (OAS) from the dropdown on the [Procore REST API Overview page](https://developers.procore.com/reference/rest/v1/docs/rest-api-overview) and replace the `rest_v1_OAS_all.json` file.
2. Generate the library with `java -jar openapi-generator-cli.jar generate -g elixir -o . -i rest_v1_OAS_all.json -c config.json`
3. Ensure that files are formatted with `mix format`

In the future this will be automated through CI.

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/procore
