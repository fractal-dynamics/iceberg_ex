# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Model.TableRequirement do
  @moduledoc """
  Assertions from the client that must be valid for the commit to succeed. Assertions are identified by `type` - - `assert-create` - the table must not already exist; used for create transactions - `assert-table-uuid` - the table UUID must match the requirement's `uuid` - `assert-ref-snapshot-id` - the table branch or tag identified by the requirement's `ref` must reference the requirement's `snapshot-id`; if `snapshot-id` is `null` or missing, the ref must not already exist - `assert-last-assigned-field-id` - the table's last assigned column id must match the requirement's `last-assigned-field-id` - `assert-current-schema-id` - the table's current schema id must match the requirement's `current-schema-id` - `assert-last-assigned-partition-id` - the table's last assigned partition id must match the requirement's `last-assigned-partition-id` - `assert-default-spec-id` - the table's default spec id must match the requirement's `default-spec-id` - `assert-default-sort-order-id` - the table's default sort order id must match the requirement's `default-sort-order-id`
  """

  @derive [Poison.Encoder]
  defstruct [
    :requirement,
    :ref,
    :uuid,
    :"snapshot-id",
    :"last-assigned-field-id",
    :"current-schema-id",
    :"last-assigned-partition-id",
    :"default-spec-id",
    :"default-sort-order-id"
  ]

  @type t :: %__MODULE__{
    :requirement => String.t,
    :ref => String.t | nil,
    :uuid => String.t | nil,
    :"snapshot-id" => integer() | nil,
    :"last-assigned-field-id" => integer() | nil,
    :"current-schema-id" => integer() | nil,
    :"last-assigned-partition-id" => integer() | nil,
    :"default-spec-id" => integer() | nil,
    :"default-sort-order-id" => integer() | nil
  }
end

defimpl Poison.Decoder, for: ApacheIcebergRESTCatalogAPI.Model.TableRequirement do
  def decode(value, _options) do
    value
  end
end

