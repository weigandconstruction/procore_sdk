# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Rfq do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :commitment_contract_id,
    :created_at,
    :deleted_at,
    :description,
    :due_date,
    :estimated_amount,
    :estimated_schedule_impact,
    :estimated_status,
    :intent_to_quote,
    :number,
    :original_quote,
    :position,
    :private,
    :prostore_file_ids,
    :status,
    :title,
    :updated_at,
    :specification_section,
    :quotes,
    :responses,
    :potential_change_orders,
    :change_order_packages,
    :commitment_potential_change_orders,
    :commitment_change_order_packages,
    :created_by,
    :assigned,
    :location,
    :cost_code,
    :change_event,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :commitment_contract_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :due_date => Date.t() | nil,
          :estimated_amount => float() | nil,
          :estimated_schedule_impact => integer() | nil,
          :estimated_status => String.t() | nil,
          :intent_to_quote => boolean() | nil,
          :number => String.t() | nil,
          :original_quote => float() | nil,
          :position => integer() | nil,
          :private => boolean() | nil,
          :prostore_file_ids => [integer()] | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :specification_section => Procore.Model.RfqSpecificationSection.t() | nil,
          :quotes => [Procore.Model.RfqQuote2.t()] | nil,
          :responses => [Procore.Model.RfqResponse2.t()] | nil,
          :potential_change_orders => Procore.Model.RfqPotentialChangeOrders.t() | nil,
          :change_order_packages => Procore.Model.RfqChangeOrderPackages.t() | nil,
          :commitment_potential_change_orders => Procore.Model.RfqPotentialChangeOrders.t() | nil,
          :commitment_change_order_packages => Procore.Model.RfqChangeOrderPackages.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :assigned =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :location => Procore.Model.Location.t() | nil,
          :cost_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode.t() | nil,
          :change_event => Procore.Model.RfqChangeEvent.t() | nil,
          :currency_configuration => Procore.Model.RfqCurrencyConfiguration.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:due_date, :date, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :specification_section,
      :struct,
      Procore.Model.RfqSpecificationSection
    )
    |> Deserializer.deserialize(:quotes, :list, Procore.Model.RfqQuote2)
    |> Deserializer.deserialize(:responses, :list, Procore.Model.RfqResponse2)
    |> Deserializer.deserialize(
      :potential_change_orders,
      :struct,
      Procore.Model.RfqPotentialChangeOrders
    )
    |> Deserializer.deserialize(
      :change_order_packages,
      :struct,
      Procore.Model.RfqChangeOrderPackages
    )
    |> Deserializer.deserialize(
      :commitment_potential_change_orders,
      :struct,
      Procore.Model.RfqPotentialChangeOrders
    )
    |> Deserializer.deserialize(
      :commitment_change_order_packages,
      :struct,
      Procore.Model.RfqChangeOrderPackages
    )
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :assigned,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:location, :struct, Procore.Model.Location)
    |> Deserializer.deserialize(
      :cost_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode
    )
    |> Deserializer.deserialize(:change_event, :struct, Procore.Model.RfqChangeEvent)
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RfqCurrencyConfiguration
    )
  end
end