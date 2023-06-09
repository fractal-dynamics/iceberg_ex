# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.LiteralExpression do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :term,
    :value
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :term => ApacheIcebergRESTCatalogAPI.Model.Term.t,
    :value => map()
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.LiteralExpression do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:term, :struct, ApacheIcebergRESTCatalogAPI.Model.Term, options)
  end
end

