# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.FolderFilesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :parent_id,
    :size,
    :description,
    :updated_at,
    :created_at,
    :checked_out_until,
    :name_with_path,
    :private,
    :is_tracked,
    :tracked_folder,
    :checked_out_by,
    :file_type,
    :file_versions,
    :legacy_id,
    :is_deleted,
    :custom_fields
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :parent_id => integer() | nil,
          :size => integer() | nil,
          :description => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :created_at => DateTime.t() | nil,
          :checked_out_until => DateTime.t() | nil,
          :name_with_path => String.t() | nil,
          :private => boolean() | nil,
          :is_tracked => boolean() | nil,
          :tracked_folder => map() | nil,
          :checked_out_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :file_type => String.t() | nil,
          :file_versions => [Procore.Model.FolderFilesInnerFileVersionsInner.t()] | nil,
          :legacy_id => integer() | nil,
          :is_deleted => boolean() | nil,
          :custom_fields =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:checked_out_until, :datetime, nil)
    |> Deserializer.deserialize(
      :checked_out_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :file_versions,
      :list,
      Procore.Model.FolderFilesInnerFileVersionsInner
    )
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields
    )
  end
end
