# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdQuantityLogsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :quantity_log
  ]

  @type t :: %__MODULE__{
          :quantity_log =>
            Procore.Model.RestV10ProjectsProjectIdQuantityLogsPostRequestQuantityLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :quantity_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdQuantityLogsPostRequestQuantityLog
    )
  end
end
