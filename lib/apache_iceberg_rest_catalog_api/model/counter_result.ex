# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.CounterResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :unit,
    :value
  ]

  @type t :: %__MODULE__{
    :unit => String.t,
    :value => integer()
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.CounterResult do
  def decode(value, _options) do
    value
  end
end

