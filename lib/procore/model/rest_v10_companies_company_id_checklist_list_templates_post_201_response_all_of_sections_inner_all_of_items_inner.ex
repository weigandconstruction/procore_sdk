# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdChecklistListTemplatesPost201ResponseAllOfSectionsInnerAllOfItemsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :section_id,
    :position,
    :response_set
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :section_id => integer() | nil,
          :position => integer() | nil,
          :response_set => Procore.Model.ChecklistTemplateItemResponseSet1.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :response_set,
      :struct,
      Procore.Model.ChecklistTemplateItemResponseSet1
    )
  end
end
