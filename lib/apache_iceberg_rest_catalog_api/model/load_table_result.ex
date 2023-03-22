# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.LoadTableResult do
  @moduledoc """
  Result used when a table is successfully loaded.  The table metadata JSON is returned in the `metadata` field. The corresponding file location of table metadata should be returned in the `metadata-location` field, unless the metadata is not yet committed. For example, a create transaction may return metadata that is staged but not committed. Clients can check whether metadata has changed by comparing metadata locations after the table has been created.  The `config` map returns table-specific configuration for the table's resources, including its HTTP client and FileIO. For example, config may contain a specific FileIO implementation class for the table depending on its underlying storage.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"metadata-location",
    :metadata,
    :config
  ]

  @type t :: %__MODULE__{
    :"metadata-location" => String.t | nil,
    :metadata => ApacheIcebergRESTCatalogAPI.Model.TableMetadata.t,
    :config => %{optional(String.t) => String.t} | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.LoadTableResult do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:metadata, :struct, ApacheIcebergRESTCatalogAPI.Model.TableMetadata, options)
  end
end

