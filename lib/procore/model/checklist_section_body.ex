# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistSectionBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :section
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :section => Procore.Model.Section.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:section, :struct, Procore.Model.Section)
  end
end