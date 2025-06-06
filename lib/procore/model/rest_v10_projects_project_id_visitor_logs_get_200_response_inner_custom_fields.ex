# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFields do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"custom_field_%{custom_field_string_definition_id}",
    :"custom_field_%{custom_field_decimal_definition_id}",
    :"custom_field_%{custom_field_boolean_definition_id}",
    :"custom_field_%{custom_field_lov_entry_definition_id}",
    :"custom_field_%{custom_field_lov_entries_definition_id}"
  ]

  @type t :: %__MODULE__{
          :"custom_field_%{custom_field_string_definition_id}" =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldStringDefinitionId.t()
            | nil,
          :"custom_field_%{custom_field_decimal_definition_id}" =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldDecimalDefinitionId.t()
            | nil,
          :"custom_field_%{custom_field_boolean_definition_id}" =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldBooleanDefinitionId.t()
            | nil,
          :"custom_field_%{custom_field_lov_entry_definition_id}" =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntryDefinitionId.t()
            | nil,
          :"custom_field_%{custom_field_lov_entries_definition_id}" =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntriesDefinitionId.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_string_definition_id}",
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldStringDefinitionId
    )
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_decimal_definition_id}",
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldDecimalDefinitionId
    )
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_boolean_definition_id}",
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldBooleanDefinitionId
    )
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_lov_entry_definition_id}",
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntryDefinitionId
    )
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_lov_entries_definition_id}",
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntriesDefinitionId
    )
  end
end
