# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :number,
    :status,
    :title,
    :description,
    :erp_status,
    :attachments,
    :adjustment_line_items,
    :created_change_event,
    :production_quantities,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :number => integer() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :description => String.t() | nil,
          :erp_status => String.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfAttachmentsInner.t()
            ]
            | nil,
          :adjustment_line_items =>
            [
              Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfAdjustmentLineItemsInner.t()
            ]
            | nil,
          :created_change_event =>
            Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfCreatedChangeEvent.t()
            | nil,
          :production_quantities =>
            [
              Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfProductionQuantitiesInner.t()
            ]
            | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfAttachmentsInner
    )
    |> Deserializer.deserialize(
      :adjustment_line_items,
      :list,
      Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfAdjustmentLineItemsInner
    )
    |> Deserializer.deserialize(
      :created_change_event,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfCreatedChangeEvent
    )
    |> Deserializer.deserialize(
      :production_quantities,
      :list,
      Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfProductionQuantitiesInner
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerCurrencyConfiguration
    )
  end
end