# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdNotesLogsIdPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :notes_log
  ]

  @type t :: %__MODULE__{
          :notes_log => Procore.Model.RestV10ProjectsProjectIdNotesLogsIdPatchRequestNotesLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :notes_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdNotesLogsIdPatchRequestNotesLog
    )
  end
end
