# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistItemResponsePayload do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :text_value,
    :number_value,
    :date_value,
    :response_option
  ]

  @type t :: %__MODULE__{
          :text_value => String.t() | nil,
          :number_value => integer() | nil,
          :date_value => Date.t() | nil,
          :response_option => Procore.Model.ChecklistItemResponsePayloadResponseOption.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date_value, :date, nil)
    |> Deserializer.deserialize(
      :response_option,
      :struct,
      Procore.Model.ChecklistItemResponsePayloadResponseOption
    )
  end
end