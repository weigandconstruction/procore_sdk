# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.IncidentAttachment1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :url,
    :thumbnail_url,
    :name,
    :content_type,
    :viewable_document_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :url => String.t() | nil,
          :thumbnail_url => String.t() | nil,
          :name => String.t() | nil,
          :content_type => String.t() | nil,
          :viewable_document_id => integer() | nil
        }

  def decode(value) do
    value
  end
end