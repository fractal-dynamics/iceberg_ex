# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.ListTables200Response do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :identifiers
  ]

  @type t :: %__MODULE__{
    :identifiers => [ApacheIcebergRESTCatalogAPI.Model.TableIdentifier.t] | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.ListTables200Response do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:identifiers, :list, ApacheIcebergRESTCatalogAPI.Model.TableIdentifier, options)
  end
end

