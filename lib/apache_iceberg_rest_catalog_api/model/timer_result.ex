# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.TimerResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"time-unit",
    :count,
    :"total-duration"
  ]

  @type t :: %__MODULE__{
    :"time-unit" => String.t,
    :count => integer(),
    :"total-duration" => integer()
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.TimerResult do
  def decode(value, _options) do
    value
  end
end
