# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Meeting do
  @moduledoc """
  Meeting object
  """

  @derive Jason.Encoder
  defstruct [
    :position,
    :title,
    :location,
    :minutes,
    :overview,
    :occurred,
    :starts_at,
    :ends_at,
    :time_zone,
    :is_private,
    :conclusion,
    :is_draft,
    :attendees,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids,
    :upload_ids
  ]

  @type t :: %__MODULE__{
          :position => integer(),
          :title => String.t() | nil,
          :location => String.t() | nil,
          :minutes => String.t() | nil,
          :overview => String.t() | nil,
          :occurred => boolean() | nil,
          :starts_at => String.t(),
          :ends_at => String.t(),
          :time_zone => String.t() | nil,
          :is_private => boolean() | nil,
          :conclusion => String.t() | nil,
          :is_draft => boolean() | nil,
          :attendees => [integer()] | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil,
          :upload_ids => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end