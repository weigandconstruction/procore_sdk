# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSpecificationUploadsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :specification_set_id,
    :specification_section_id,
    :default_revision,
    :files,
    :upload_uuids,
    :issued_date,
    :received_date,
    :ignore_number,
    :spec_format
  ]

  @type t :: %__MODULE__{
          :specification_set_id => integer(),
          :specification_section_id => integer() | nil,
          :default_revision => String.t() | nil,
          :files => [String.t()] | nil,
          :upload_uuids => [String.t()] | nil,
          :issued_date => String.t() | nil,
          :received_date => String.t() | nil,
          :ignore_number => String.t() | nil,
          :spec_format => String.t()
        }

  def decode(value) do
    value
  end
end