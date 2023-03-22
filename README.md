# ApacheIcebergRESTCatalogAPI

Defines the specification for the first version of the REST Catalog API. Implementations should ideally support both Iceberg table specs v1 and v2, with priority given to v2.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `apache_iceberg_rest_catalog_api` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:apache_iceberg_rest_catalog_api, "~> 0.0.1"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/apache_iceberg_rest_catalog_api][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :apache_iceberg_rest_catalog_api, base_url: "https://localhost"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`ApacheIcebergRESTCatalogAPI.Connection.new/1`:

```elixir
client = ApacheIcebergRESTCatalogAPI.Connection.new(base_url: "https://localhost")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/apache_iceberg_rest_catalog_api
