# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.AddPartitionSpecUpdateAllOf do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :spec
  ]

  @type t :: %__MODULE__{
    :spec => ApacheIcebergRESTCatalogAPI.Model.PartitionSpec.t
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.AddPartitionSpecUpdateAllOf do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:spec, :struct, ApacheIcebergRESTCatalogAPI.Model.PartitionSpec, options)
  end
end

