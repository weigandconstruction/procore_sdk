# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistItemAttachment do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :created_by,
    :attachment
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :created_by => Procore.Model.ChecklistCommentCreatedBy.t() | nil,
          :attachment => Procore.Model.ChecklistItemAttachmentAttachment.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:created_by, :struct, Procore.Model.ChecklistCommentCreatedBy)
    |> Deserializer.deserialize(
      :attachment,
      :struct,
      Procore.Model.ChecklistItemAttachmentAttachment
    )
  end
end