# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BimFileUpload do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :bim_file_id,
    :document_upload_id,
    :file_version,
    :attachment,
    :created_by,
    :created_at,
    :updated_at,
    :metadata
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :bim_file_id => integer() | nil,
          :document_upload_id => integer() | nil,
          :file_version => Procore.Model.BimFileUploadFileVersion.t() | nil,
          :attachment => Procore.Model.BimFileUploadAttachment.t() | nil,
          :created_by => Procore.Model.BimFileUploadCreatedBy.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :metadata => Procore.Model.BimFileUploadMetadata.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:file_version, :struct, Procore.Model.BimFileUploadFileVersion)
    |> Deserializer.deserialize(:attachment, :struct, Procore.Model.BimFileUploadAttachment)
    |> Deserializer.deserialize(:created_by, :struct, Procore.Model.BimFileUploadCreatedBy)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:metadata, :struct, Procore.Model.BimFileUploadMetadata)
  end
end
