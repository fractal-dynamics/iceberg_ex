# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.SetCurrentSchemaUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :"schema-id"
  ]

  @type t :: %__MODULE__{
    :action => String.t,
    :"schema-id" => integer()
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.SetCurrentSchemaUpdate do
  def decode(value, _options) do
    value
  end
end

