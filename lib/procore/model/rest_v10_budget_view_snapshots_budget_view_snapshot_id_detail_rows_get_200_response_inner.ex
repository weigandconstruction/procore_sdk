# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BudgetViewSnapshotsBudgetViewSnapshotIdDetailRowsGet200ResponseInner do
  @moduledoc """
  Budget View Detail Row
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :deletable,
    :company_id,
    :company,
    :project_id,
    :wbs_code_id,
    :biller_id,
    :root_cost_code_id,
    :cost_code_id,
    :cost_code_origin_id,
    :category_id,
    :project,
    :biller,
    :biller_type,
    :root_cost_code,
    :cost_code,
    :category,
    :budget_modifications,
    :original_budget_amount,
    :budget_forecast,
    :currency_configuration,
    :unbudgeted_reason
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :deletable => boolean() | nil,
          :company_id => integer() | nil,
          :company => String.t() | nil,
          :project_id => integer() | nil,
          :wbs_code_id => integer() | nil,
          :biller_id => integer() | nil,
          :root_cost_code_id => integer() | nil,
          :cost_code_id => integer() | nil,
          :cost_code_origin_id => String.t() | nil,
          :category_id => integer() | nil,
          :project => String.t() | nil,
          :biller => String.t() | nil,
          :biller_type => String.t() | nil,
          :root_cost_code => String.t() | nil,
          :cost_code => String.t() | nil,
          :category => String.t() | nil,
          :budget_modifications => String.t() | nil,
          :original_budget_amount => String.t() | nil,
          :budget_forecast =>
            Procore.Model.RestV10BudgetViewSnapshotsBudgetViewSnapshotIdDetailRowsGet200ResponseInnerBudgetForecast.t()
            | nil,
          :currency_configuration =>
            Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerCurrencyConfiguration.t()
            | nil,
          :unbudgeted_reason => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :budget_forecast,
      :struct,
      Procore.Model.RestV10BudgetViewSnapshotsBudgetViewSnapshotIdDetailRowsGet200ResponseInnerBudgetForecast
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10BudgetViewsBudgetViewIdSummaryRowsGet200ResponseInnerCurrencyConfiguration
    )
  end
end