# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :safety_violation_log
  ]

  @type t :: %__MODULE__{
          :safety_violation_log =>
            Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsPostRequestSafetyViolationLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :safety_violation_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsPostRequestSafetyViolationLog
    )
  end
end