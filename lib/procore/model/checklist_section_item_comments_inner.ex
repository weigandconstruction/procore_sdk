# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistSectionItemCommentsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :body,
    :created_at,
    :created_by
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :body => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdChecklistListTemplatesPost201ResponseAllOfCreatedBy.t()
            | nil
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
  end
end
