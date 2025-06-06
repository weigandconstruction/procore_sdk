# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10FilesIdPatchRequestFile do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :parent_id,
    :name,
    :checked_out_until,
    :is_tracked,
    :explicit_permissions,
    :description,
    :data,
    :upload_uuid,
    :"custom_field_%{custom_field_definition_id}"
  ]

  @type t :: %__MODULE__{
          :parent_id => integer() | nil,
          :name => String.t() | nil,
          :checked_out_until => DateTime.t() | nil,
          :is_tracked => boolean() | nil,
          :explicit_permissions => boolean() | nil,
          :description => String.t() | nil,
          :data => String.t() | nil,
          :upload_uuid => String.t() | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:checked_out_until, :datetime, nil)
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end
