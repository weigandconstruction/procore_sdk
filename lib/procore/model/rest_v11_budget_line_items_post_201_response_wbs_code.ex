# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11BudgetLineItemsPost201ResponseWbsCode do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :flat_code,
    :description
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :flat_code => String.t() | nil,
          :description => String.t() | nil
        }

  def decode(value) do
    value
  end
end