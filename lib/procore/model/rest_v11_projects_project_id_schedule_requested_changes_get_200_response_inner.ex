# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdScheduleRequestedChangesGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :change_requested,
    :created_by,
    :new_finish,
    :new_start,
    :new_percentage,
    :old_finish,
    :old_start,
    :old_percentage,
    :other_change,
    :reason,
    :status,
    :status_not_localized,
    :notes,
    :created_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :change_requested => String.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :new_finish => Date.t() | nil,
          :new_start => Date.t() | nil,
          :new_percentage => integer() | nil,
          :old_finish => Date.t() | nil,
          :old_start => Date.t() | nil,
          :old_percentage => integer() | nil,
          :other_change => String.t() | nil,
          :reason => String.t() | nil,
          :status => String.t() | nil,
          :status_not_localized => String.t() | nil,
          :notes => String.t() | nil,
          :created_at => Date.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:new_finish, :date, nil)
    |> Deserializer.deserialize(:new_start, :date, nil)
    |> Deserializer.deserialize(:old_finish, :date, nil)
    |> Deserializer.deserialize(:old_start, :date, nil)
    |> Deserializer.deserialize(:created_at, :date, nil)
  end
end