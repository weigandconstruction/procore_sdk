# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BudgetViewsGet200ResponseInnerLinks do
  @moduledoc """
  Links to get budgeting data using this budget view
  """

  @derive Jason.Encoder
  defstruct [
    :detail_rows,
    :summary_rows
  ]

  @type t :: %__MODULE__{
          :detail_rows => String.t() | nil,
          :summary_rows => String.t() | nil
        }

  def decode(value) do
    value
  end
end