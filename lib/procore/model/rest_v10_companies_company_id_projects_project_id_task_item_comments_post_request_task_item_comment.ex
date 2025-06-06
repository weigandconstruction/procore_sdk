# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsPostRequestTaskItemComment do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :comment,
    :status,
    :task_item_id,
    :attachments,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids,
    :upload_ids,
    :document_management_document_revision_ids
  ]

  @type t :: %__MODULE__{
          :comment => String.t() | nil,
          :status => String.t() | nil,
          :task_item_id => integer(),
          :attachments => [String.t()] | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil,
          :upload_ids => [String.t()] | nil,
          :document_management_document_revision_ids => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
