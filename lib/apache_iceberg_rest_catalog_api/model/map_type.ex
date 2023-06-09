# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.MapType do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :"key-id",
    :key,
    :"value-id",
    :value,
    :"value-required"
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :"key-id" => integer(),
    :key => ApacheIcebergRESTCatalogAPI.Model.Type.t,
    :"value-id" => integer(),
    :value => ApacheIcebergRESTCatalogAPI.Model.Type.t,
    :"value-required" => boolean()
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.MapType do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:key, :struct, ApacheIcebergRESTCatalogAPI.Model.Type, options)
    |> deserialize(:value, :struct, ApacheIcebergRESTCatalogAPI.Model.Type, options)
  end
end

