# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.ErrorModel do
  @moduledoc """
  JSON error payload returned in a response with further details on the error
  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :type,
    :code,
    :stack
  ]

  @type t :: %__MODULE__{
    :message => String.t,
    :type => String.t,
    :code => integer(),
    :stack => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.ErrorModel do
  def decode(value, _options) do
    value
  end
end
