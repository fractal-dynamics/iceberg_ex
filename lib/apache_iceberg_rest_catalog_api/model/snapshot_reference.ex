# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.SnapshotReference do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :"snapshot-id",
    :"max-ref-age-ms",
    :"max-snapshot-age-ms",
    :"min-snapshots-to-keep"
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :"snapshot-id" => integer(),
    :"max-ref-age-ms" => integer() | nil,
    :"max-snapshot-age-ms" => integer() | nil,
    :"min-snapshots-to-keep" => integer() | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.SnapshotReference do
  def decode(value, _options) do
    value
  end
end

