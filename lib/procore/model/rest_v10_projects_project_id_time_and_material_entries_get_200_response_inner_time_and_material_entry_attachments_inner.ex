# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEntriesGet200ResponseInnerTimeAndMaterialEntryAttachmentsInner do
  @moduledoc """
  Time and Material Entry Attachment
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :attachment_id,
    :content_type,
    :presentation_url,
    :url,
    :thumbnail_url,
    :filename
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :attachment_id => integer() | nil,
          :content_type => String.t() | nil,
          :presentation_url => String.t() | nil,
          :url => String.t() | nil,
          :thumbnail_url => String.t() | nil,
          :filename => String.t() | nil
        }

  def decode(value) do
    value
  end
end