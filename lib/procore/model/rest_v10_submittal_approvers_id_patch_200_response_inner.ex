# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10SubmittalApproversIdPatch200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :attachments,
    :comment,
    :returned_date,
    :sent_date,
    :days_to_respond,
    :submittal_response_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :attachments =>
            [Procore.Model.RestV10SubmittalApproversIdPatch200ResponseInnerAttachmentsInner.t()]
            | nil,
          :comment => String.t() | nil,
          :returned_date => Date.t() | nil,
          :sent_date => Date.t() | nil,
          :days_to_respond => integer() | nil,
          :submittal_response_id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10SubmittalApproversIdPatch200ResponseInnerAttachmentsInner
    )
    |> Deserializer.deserialize(:returned_date, :date, nil)
    |> Deserializer.deserialize(:sent_date, :date, nil)
  end
end
