# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Api.ConfigurationAPI do
  @moduledoc """
  API calls for all endpoints tagged `ConfigurationAPI`.
  """

  alias ApacheIcebergRESTCatalogAPI.Connection
  import ApacheIcebergRESTCatalogAPI.RequestBuilder

  @doc """
  List all catalog configuration settings
   All REST clients should first call this route to get catalog configuration properties from the server to configure the catalog and its HTTP client. Configuration from the server consists of two sets of key/value pairs. - defaults -  properties that should be used as default configuration; applied before client configuration - overrides - properties that should be used to override client configuration; applied after defaults and client configuration  Catalog configuration is constructed by setting the defaults, then client- provided configuration, and finally overrides. The final property set is then used to configure the catalog.  For example, a default configuration property might set the size of the client pool, which can be replaced with a client-specific setting. An override might be used to set the warehouse location, which is stored on the server rather than in client configuration.  Common catalog configuration settings are documented at https://iceberg.apache.org/configuration/#catalog-properties 

  ### Parameters

  - `connection` (ApacheIcebergRESTCatalogAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:warehouse` (String.t): Warehouse location or identifier to request from the service

  ### Returns

  - `{:ok, ApacheIcebergRESTCatalogAPI.Model.CatalogConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_config(Tesla.Env.client, keyword()) :: {:ok, ApacheIcebergRESTCatalogAPI.Model.CatalogConfig.t} | {:ok, ApacheIcebergRESTCatalogAPI.Model.ErrorModel.t} | {:error, Tesla.Env.t}
  def get_config(connection, opts \\ []) do
    optional_params = %{
      :warehouse => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/config")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %ApacheIcebergRESTCatalogAPI.Model.CatalogConfig{}},
      {400, %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}},
      {401, %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}},
      {403, %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}},
      {419, %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}},
      {503, %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}},
      {"5XX", %ApacheIcebergRESTCatalogAPI.Model.ErrorModel{}}
    ])
  end
end
