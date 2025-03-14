# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInner do
  @moduledoc """
  Budget View Summary Row
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :biller_type,
    :original_budget_amount,
    :budget_modifications,
    :budget_forecast,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :biller_type => String.t() | nil,
          :original_budget_amount => String.t() | nil,
          :budget_modifications => String.t() | nil,
          :budget_forecast =>
            Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerBudgetForecast.t()
            | nil,
          :currency_configuration =>
            Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :budget_forecast,
      :struct,
      Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerBudgetForecast
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerCurrencyConfiguration
    )
  end
end
