# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistTemplate do
  @moduledoc """
  Checklist Template object
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :inspection_type_id,
    :alternative_response_set_id,
    :name,
    :trade_id
  ]

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :inspection_type_id => integer() | nil,
          :alternative_response_set_id => integer() | nil,
          :name => String.t() | nil,
          :trade_id => integer() | nil
        }

  def decode(value) do
    value
  end
end