# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdTimecardEntriesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :timecard_entry
  ]

  @type t :: %__MODULE__{
          :timecard_entry => Procore.Model.TimecardEntry9.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:timecard_entry, :struct, Procore.Model.TimecardEntry9)
  end
end
