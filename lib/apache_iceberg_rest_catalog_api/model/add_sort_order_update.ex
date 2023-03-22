# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.AddSortOrderUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :"sort-order"
  ]

  @type t :: %__MODULE__{
    :action => String.t,
    :"sort-order" => ApacheIcebergRESTCatalogAPI.Model.SortOrder.t
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.AddSortOrderUpdate do
  import ApacheIcebergRESTCatalogAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sort-order", :struct, ApacheIcebergRESTCatalogAPI.Model.SortOrder, options)
  end
end

