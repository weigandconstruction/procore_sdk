# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :incident_id,
    :attachments,
    :statement,
    :statement_plain_text,
    :date_received,
    :created_at,
    :deleted_at,
    :updated_at,
    :witness,
    :custom_fields,
    :recording
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :incident_id => integer() | nil,
          :attachments => [Procore.Model.IncidentAttachment.t()] | nil,
          :statement => String.t() | nil,
          :statement_plain_text => String.t() | nil,
          :date_received => Date.t() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :witness =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerWitness.t()
            | nil,
          :custom_fields =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields.t()
            | nil,
          :recording =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerRecording.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:attachments, :list, Procore.Model.IncidentAttachment)
    |> Deserializer.deserialize(:date_received, :date, nil)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :witness,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerWitness
    )
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields
    )
    |> Deserializer.deserialize(
      :recording,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerRecording
    )
  end
end
