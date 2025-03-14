# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10SubmittalAssociatedAttachmentsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :content_type,
    :filename,
    :document_markup_layer_id,
    :attachment_id,
    :state,
    :updated_at,
    :url,
    :version_timestamp,
    :id
  ]

  @type t :: %__MODULE__{
          :content_type => String.t() | nil,
          :filename => String.t() | nil,
          :document_markup_layer_id => integer() | nil,
          :attachment_id => integer() | nil,
          :state => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :url => String.t() | nil,
          :version_timestamp => DateTime.t() | nil,
          :id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:version_timestamp, :datetime, nil)
  end
end
