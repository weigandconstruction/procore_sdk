# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistSection2 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :position,
    :list_id,
    :not_applicable
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :position => integer() | nil,
          :list_id => integer() | nil,
          :not_applicable => boolean() | nil
        }

  def decode(value) do
    value
  end
end