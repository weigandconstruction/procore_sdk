# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEntryAttachmentsBulkDestroyDeleteRequestTimeAndMaterialEntryAttachment do
  @moduledoc """
  Time and Material Attachment Object
  """

  @derive Jason.Encoder
  defstruct [
    :time_and_material_entry_attachment_ids
  ]

  @type t :: %__MODULE__{
          :time_and_material_entry_attachment_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end