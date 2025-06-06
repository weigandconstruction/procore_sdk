# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ArrayOfPotentialChangeOrdersEntitiesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :accounting_method,
    :change_order_change_reason_id,
    :change_order_request_id,
    :commitment_change_event_id,
    :contract_id,
    :created_at,
    :creator,
    :deleted_at,
    :description,
    :designated_reviewer,
    :due_date,
    :field_change,
    :grand_total,
    :invoiced_date,
    :attachments,
    :line_items,
    :line_items_extended_total,
    :line_items_total,
    :location_id,
    :number,
    :origin_data,
    :origin_id,
    :paid,
    :paid_date,
    :position,
    :prime_change_event_id,
    :private,
    :reason,
    :received_from,
    :reference,
    :request_for_quote_id,
    :reviewed_at,
    :reviewer,
    :revision,
    :schedule_impact_amount,
    :status,
    :title,
    :updated_at,
    :vendor,
    :void,
    :currency_configuration,
    :custom_fields
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :accounting_method => String.t() | nil,
          :change_order_change_reason_id => integer() | nil,
          :change_order_request_id => integer() | nil,
          :commitment_change_event_id => integer() | nil,
          :contract_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :creator =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :designated_reviewer =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :due_date => DateTime.t() | nil,
          :field_change => boolean() | nil,
          :grand_total => String.t() | nil,
          :invoiced_date => Date.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner.t()
            ]
            | nil,
          :line_items =>
            [Procore.Model.ArrayOfPotentialChangeOrdersEntitiesInnerLineItemsInner.t()] | nil,
          :line_items_extended_total => String.t() | nil,
          :line_items_total => String.t() | nil,
          :location_id => integer() | nil,
          :number => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :paid => boolean() | nil,
          :paid_date => Date.t() | nil,
          :position => integer() | nil,
          :prime_change_event_id => integer() | nil,
          :private => boolean() | nil,
          :reason => String.t() | nil,
          :received_from =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :reference => String.t() | nil,
          :request_for_quote_id => integer() | nil,
          :reviewed_at => DateTime.t() | nil,
          :reviewer =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :revision => integer() | nil,
          :schedule_impact_amount => integer() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :vendor => Procore.Model.RestV10PrimeContractsGet200ResponseInnerContractor.t() | nil,
          :void => boolean() | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration.t()
            | nil,
          :custom_fields =>
            Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFields.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :creator,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(
      :designated_reviewer,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:due_date, :datetime, nil)
    |> Deserializer.deserialize(:invoiced_date, :date, nil)
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner
    )
    |> Deserializer.deserialize(
      :line_items,
      :list,
      Procore.Model.ArrayOfPotentialChangeOrdersEntitiesInnerLineItemsInner
    )
    |> Deserializer.deserialize(:paid_date, :date, nil)
    |> Deserializer.deserialize(
      :received_from,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:reviewed_at, :datetime, nil)
    |> Deserializer.deserialize(
      :reviewer,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :vendor,
      :struct,
      Procore.Model.RestV10PrimeContractsGet200ResponseInnerContractor
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration
    )
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFields
    )
  end
end
