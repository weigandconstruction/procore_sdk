# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDelayLogsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :delay_log
  ]

  @type t :: %__MODULE__{
          :delay_log => Procore.Model.RestV10ProjectsProjectIdDelayLogsPostRequestDelayLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :delay_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdDelayLogsPostRequestDelayLog
    )
  end
end
