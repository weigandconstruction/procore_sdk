# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.SpecificationSectionRevision do
  @moduledoc """
  A version of a Specification Section. Each time a Specification Section is revised, the newly uploaded version is a new revision of that section.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :specification_section_id,
    :specification_section_division_id,
    :specification_set_id,
    :number,
    :description,
    :url,
    :revision,
    :issued_date,
    :received_date,
    :updated_at,
    :custom_fields
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :specification_section_id => integer() | nil,
          :specification_section_division_id => integer() | nil,
          :specification_set_id => integer() | nil,
          :number => String.t() | nil,
          :description => String.t() | nil,
          :url => String.t() | nil,
          :revision => String.t() | nil,
          :issued_date => Date.t() | nil,
          :received_date => Date.t() | nil,
          :updated_at => String.t() | nil,
          :custom_fields =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:issued_date, :date, nil)
    |> Deserializer.deserialize(:received_date, :date, nil)
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields
    )
  end
end
