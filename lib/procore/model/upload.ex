# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Upload do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :response_filename,
    :response_content_type,
    :attachment_content_disposition,
    :size,
    :segments
  ]

  @type t :: %__MODULE__{
          :response_filename => String.t(),
          :response_content_type => String.t() | nil,
          :attachment_content_disposition => boolean() | nil,
          :size => integer() | nil,
          :segments => [Procore.Model.UploadSegmentsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:segments, :list, Procore.Model.UploadSegmentsInner)
  end
end
