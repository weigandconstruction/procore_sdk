# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdScheduleGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :active_features,
    :last_calendar_view,
    :schedule_present,
    :schedule_processing,
    :schedule_crud_beta_agreement,
    :schedule_tasks_last_updated_at,
    :schedule_tasks_edited_manually,
    :type,
    :data_date,
    :lookahead_data_date,
    :number_of_pending_requested_changes,
    :uploaded_at,
    :office,
    :project
  ]

  @type t :: %__MODULE__{
          :active_features =>
            Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseActiveFeatures.t() | nil,
          :last_calendar_view => String.t() | nil,
          :schedule_present => boolean() | nil,
          :schedule_processing => boolean() | nil,
          :schedule_crud_beta_agreement =>
            Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseScheduleCrudBetaAgreement.t()
            | nil,
          :schedule_tasks_last_updated_at => DateTime.t() | nil,
          :schedule_tasks_edited_manually => boolean() | nil,
          :type => Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseType.t() | nil,
          :data_date => DateTime.t() | nil,
          :lookahead_data_date => DateTime.t() | nil,
          :number_of_pending_requested_changes => float() | nil,
          :uploaded_at => DateTime.t() | nil,
          :office => Procore.Model.Office.t() | nil,
          :project => Procore.Model.Project.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :active_features,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseActiveFeatures
    )
    |> Deserializer.deserialize(
      :schedule_crud_beta_agreement,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseScheduleCrudBetaAgreement
    )
    |> Deserializer.deserialize(:schedule_tasks_last_updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :type,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdScheduleGet200ResponseType
    )
    |> Deserializer.deserialize(:data_date, :datetime, nil)
    |> Deserializer.deserialize(:lookahead_data_date, :datetime, nil)
    |> Deserializer.deserialize(:uploaded_at, :datetime, nil)
    |> Deserializer.deserialize(:office, :struct, Procore.Model.Office)
    |> Deserializer.deserialize(:project, :struct, Procore.Model.Project)
  end
end
