# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.ListNamespaces200Response do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :namespaces
  ]

  @type t :: %__MODULE__{
    :namespaces => [ApacheIcebergRESTCatalogAPI.Model.List.t] | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.ListNamespaces200Response do
  def decode(value, _options) do
    value
  end
end

