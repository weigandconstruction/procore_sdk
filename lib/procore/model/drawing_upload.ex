# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.DrawingUpload do
  @moduledoc """
  Drawing Upload
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :project_id,
    :company_id,
    :created_by_id,
    :created_at,
    :updated_at,
    :error_email_sent,
    :notify_on_success,
    :deletion_in_progress,
    :success_email_sent,
    :drawing_area_id,
    :status,
    :pre_adaptive_complete,
    :drawing_number_contains_revision,
    :get_info_from_filename,
    :language,
    :drawing_log_imports
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :project_id => integer() | nil,
          :company_id => integer() | nil,
          :created_by_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :error_email_sent => boolean() | nil,
          :notify_on_success => boolean() | nil,
          :deletion_in_progress => boolean() | nil,
          :success_email_sent => boolean() | nil,
          :drawing_area_id => integer() | nil,
          :status => String.t() | nil,
          :pre_adaptive_complete => boolean() | nil,
          :drawing_number_contains_revision => boolean() | nil,
          :get_info_from_filename => boolean() | nil,
          :language => String.t() | nil,
          :drawing_log_imports => [Procore.Model.DrawingLogImport.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:drawing_log_imports, :list, Procore.Model.DrawingLogImport)
  end
end
