# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RfiBodyRfiQuestion do
  @moduledoc """
  The Question of the RFI
  """

  @derive Jason.Encoder
  defstruct [
    :body,
    :attachments,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids,
    :upload_ids
  ]

  @type t :: %__MODULE__{
          :body => String.t(),
          :attachments => [String.t()] | nil,
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