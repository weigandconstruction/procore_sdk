# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWasteLogsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :waste_log
  ]

  @type t :: %__MODULE__{
          :waste_log => Procore.Model.RestV10ProjectsProjectIdWasteLogsPostRequestWasteLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :waste_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsPostRequestWasteLog
    )
  end
end
