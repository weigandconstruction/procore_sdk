# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdVisitorLogsIdPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :visitor_log
  ]

  @type t :: %__MODULE__{
          :visitor_log =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsIdPatchRequestVisitorLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :visitor_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsIdPatchRequestVisitorLog
    )
  end
end
