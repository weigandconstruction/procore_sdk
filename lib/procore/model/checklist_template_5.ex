# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistTemplate5 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :description,
    :company_description,
    :created_at,
    :updated_at,
    :inspection_type,
    :alternative_response_set_id,
    :response_set,
    :location,
    :trade,
    :created_by,
    :attachments,
    :sections
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :description => String.t() | nil,
          :company_description => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :inspection_type => Procore.Model.ChecklistTemplate4InspectionType.t() | nil,
          :alternative_response_set_id => integer() | nil,
          :response_set => Procore.Model.ChecklistAlternativeResponseSet.t() | nil,
          :location => Procore.Model.ChecklistTemplate4Location.t() | nil,
          :trade => Procore.Model.Trade2.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy.t()
            | nil,
          :attachments =>
            [Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t()] | nil,
          :sections => [Procore.Model.ChecklistTemplate5SectionsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :inspection_type,
      :struct,
      Procore.Model.ChecklistTemplate4InspectionType
    )
    |> Deserializer.deserialize(
      :response_set,
      :struct,
      Procore.Model.ChecklistAlternativeResponseSet
    )
    |> Deserializer.deserialize(:location, :struct, Procore.Model.ChecklistTemplate4Location)
    |> Deserializer.deserialize(:trade, :struct, Procore.Model.Trade2)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
    |> Deserializer.deserialize(:sections, :list, Procore.Model.ChecklistTemplate5SectionsInner)
  end
end
