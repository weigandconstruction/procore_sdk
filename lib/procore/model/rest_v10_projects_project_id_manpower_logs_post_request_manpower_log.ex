# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdManpowerLogsPostRequestManpowerLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :datetime,
    :notes,
    :num_workers,
    :num_hours,
    :contact_id,
    :user_id,
    :cost_code_id,
    :location_id,
    :trade_id,
    :mt_location,
    :"custom_field_%{custom_field_definition_id}"
  ]

  @type t :: %__MODULE__{
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :notes => String.t() | nil,
          :num_workers => integer() | nil,
          :num_hours => String.t() | nil,
          :contact_id => integer() | nil,
          :user_id => integer() | nil,
          :cost_code_id => integer() | nil,
          :location_id => integer() | nil,
          :trade_id => integer() | nil,
          :mt_location => [String.t()] | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end