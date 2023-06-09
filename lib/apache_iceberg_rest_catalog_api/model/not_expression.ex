# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.NotExpression do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :child
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :child => ApacheIcebergRESTCatalogAPI.Model.Expression.t
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.NotExpression do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:child, :struct, ApacheIcebergRESTCatalogAPI.Model.Expression, options)
  end
end

