# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdManpowerLogsIdPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :manpower_log
  ]

  @type t :: %__MODULE__{
          :manpower_log =>
            Procore.Model.RestV10ProjectsProjectIdManpowerLogsIdPatchRequestManpowerLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :manpower_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdManpowerLogsIdPatchRequestManpowerLog
    )
  end
end