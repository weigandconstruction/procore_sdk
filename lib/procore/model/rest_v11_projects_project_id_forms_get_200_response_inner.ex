# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :description,
    :form_template_id,
    :form_template_name,
    :name,
    :private,
    :created_by,
    :updated_at,
    :fillable_pdf,
    :attachments,
    :thumbnail_url,
    :viewable,
    :viewable_document_id,
    :holder_class,
    :download_all_uuid,
    :attachment,
    :permissions
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :form_template_id => integer() | nil,
          :form_template_name => String.t() | nil,
          :name => String.t() | nil,
          :private => boolean() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy.t()
            | nil,
          :updated_at => DateTime.t() | nil,
          :fillable_pdf =>
            Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerFillablePdf.t() | nil,
          :attachments =>
            [Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerFillablePdf.t()] | nil,
          :thumbnail_url => String.t() | nil,
          :viewable => boolean() | nil,
          :viewable_document_id => integer() | nil,
          :holder_class => String.t() | nil,
          :download_all_uuid => %{optional(String.t()) => any()} | nil,
          :attachment =>
            Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerAttachment.t() | nil,
          :permissions =>
            Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerPermissions.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :fillable_pdf,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerFillablePdf
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerFillablePdf
    )
    |> Deserializer.deserialize(
      :attachment,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerAttachment
    )
    |> Deserializer.deserialize(
      :permissions,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdFormsGet200ResponseInnerPermissions
    )
  end
end