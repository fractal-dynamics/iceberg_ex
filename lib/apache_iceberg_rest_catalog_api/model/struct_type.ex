# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.StructType do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :fields
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :fields => [ApacheIcebergRESTCatalogAPI.Model.StructField.t]
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.StructType do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:fields, :list, ApacheIcebergRESTCatalogAPI.Model.StructField, options)
  end
end

