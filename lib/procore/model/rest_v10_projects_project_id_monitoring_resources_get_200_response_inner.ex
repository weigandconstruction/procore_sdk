# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdMonitoringResourcesGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :description,
    :start_date,
    :end_date,
    :unit_of_measure,
    :unit_cost,
    :units_remaining,
    :forecast_to_complete,
    :planned_total_cost,
    :total_units,
    :utilization,
    :budget_line_item_id,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :description => String.t() | nil,
          :start_date => String.t() | nil,
          :end_date => String.t() | nil,
          :unit_of_measure => String.t() | nil,
          :unit_cost => float() | nil,
          :units_remaining => integer() | nil,
          :forecast_to_complete => float() | nil,
          :planned_total_cost => float() | nil,
          :total_units => integer() | nil,
          :utilization => float() | nil,
          :budget_line_item_id => integer() | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration
    )
  end
end
