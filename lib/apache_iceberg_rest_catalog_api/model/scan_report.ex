# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.ScanReport do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"table-name",
    :"snapshot-id",
    :filter,
    :"schema-id",
    :"projected-field-ids",
    :"projected-field-names",
    :metrics,
    :metadata
  ]

  @type t :: %__MODULE__{
    :"table-name" => String.t,
    :"snapshot-id" => integer(),
    :filter => ApacheIcebergRESTCatalogAPI.Model.Expression.t,
    :"schema-id" => integer(),
    :"projected-field-ids" => [integer()],
    :"projected-field-names" => [String.t],
    :metrics => %{optional(String.t) => ApacheIcebergRESTCatalogAPI.Model.MetricResult.t},
    :metadata => %{optional(String.t) => String.t} | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.ScanReport do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:filter, :struct, ApacheIcebergRESTCatalogAPI.Model.Expression, options)
    |> deserialize(:metrics, :map, ApacheIcebergRESTCatalogAPI.Model.MetricResult, options)
  end
end

