# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfSectionsInnerAllOfItemsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :section_id,
    :position,
    :response_set,
    :details,
    :synced_to
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :section_id => integer() | nil,
          :position => integer() | nil,
          :response_set => Procore.Model.ChecklistTemplateItemResponseSet1.t() | nil,
          :details => String.t() | nil,
          :synced_to =>
            Procore.Model.RestV11ProjectsProjectIdChecklistListTemplatesIdGet200ResponseAllOfSectionsInnerAllOfItemsInnerAllOfSyncedTo.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :response_set,
      :struct,
      Procore.Model.ChecklistTemplateItemResponseSet1
    )
    |> Deserializer.deserialize(
      :synced_to,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdChecklistListTemplatesIdGet200ResponseAllOfSectionsInnerAllOfItemsInnerAllOfSyncedTo
    )
  end
end
