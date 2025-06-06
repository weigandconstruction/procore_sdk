# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDrawingDisciplinesIdPut200Response do
  @moduledoc """
  Drawing Discipline
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :position
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :position => integer() | nil
        }

  def decode(value) do
    value
  end
end
