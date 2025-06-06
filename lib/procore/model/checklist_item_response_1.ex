# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistItemResponse1 do
  @moduledoc """
  Item Response
  """

  @derive Jason.Encoder
  defstruct [
    :item_id,
    :item_type,
    :payload,
    :responded_at,
    :responder,
    :status
  ]

  @type t :: %__MODULE__{
          :item_id => integer() | nil,
          :item_type => Procore.Model.ChecklistItemType.t() | nil,
          :payload => Procore.Model.ChecklistItemResponsePayload.t() | nil,
          :responded_at => DateTime.t() | nil,
          :responder =>
            Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy.t()
            | nil,
          :status => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:item_type, :struct, Procore.Model.ChecklistItemType)
    |> Deserializer.deserialize(:payload, :struct, Procore.Model.ChecklistItemResponsePayload)
    |> Deserializer.deserialize(:responded_at, :datetime, nil)
    |> Deserializer.deserialize(
      :responder,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy
    )
  end
end
