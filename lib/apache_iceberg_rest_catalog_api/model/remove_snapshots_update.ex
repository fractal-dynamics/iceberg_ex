# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.RemoveSnapshotsUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :"snapshot-ids"
  ]

  @type t :: %__MODULE__{
    :action => String.t,
    :"snapshot-ids" => [integer()]
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.RemoveSnapshotsUpdate do
  def decode(value, _options) do
    value
  end
end

