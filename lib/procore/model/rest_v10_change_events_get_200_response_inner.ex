# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ChangeEventsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :number,
    :alphanumeric_number,
    :origin_data,
    :origin_id,
    :title,
    :description,
    :status,
    :project_id,
    :created_at,
    :deleted_at,
    :updated_at,
    :event_type,
    :event_scope,
    :change_event_origin_id,
    :change_event_origin_type,
    :rfi,
    :change_event_line_items,
    :change_order_change_reason,
    :change_event_status,
    :created_by,
    :attachments,
    :rfqs,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :number => integer() | nil,
          :alphanumeric_number => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :title => String.t() | nil,
          :description => String.t() | nil,
          :status => String.t() | nil,
          :project_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :event_type => String.t() | nil,
          :event_scope => String.t() | nil,
          :change_event_origin_id => integer() | nil,
          :change_event_origin_type => String.t() | nil,
          :rfi => Procore.Model.RestV10ChangeEventsGet200ResponseInnerRfi.t() | nil,
          :change_event_line_items =>
            [Procore.Model.RestV10ChangeEventsGet200ResponseInnerChangeEventLineItemsInner.t()]
            | nil,
          :change_order_change_reason =>
            Procore.Model.RfqChangeEventChangeOrderChangeReason.t() | nil,
          :change_event_status => Procore.Model.RfqChangeEventChangeEventStatus.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :attachments =>
            [Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t()] | nil,
          :rfqs => [Procore.Model.Rfq4.t()] | nil,
          :currency_configuration =>
            Procore.Model.RestV10ChangeEventsGet200ResponseInnerChangeEventLineItemsInnerCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :rfi,
      :struct,
      Procore.Model.RestV10ChangeEventsGet200ResponseInnerRfi
    )
    |> Deserializer.deserialize(
      :change_event_line_items,
      :list,
      Procore.Model.RestV10ChangeEventsGet200ResponseInnerChangeEventLineItemsInner
    )
    |> Deserializer.deserialize(
      :change_order_change_reason,
      :struct,
      Procore.Model.RfqChangeEventChangeOrderChangeReason
    )
    |> Deserializer.deserialize(
      :change_event_status,
      :struct,
      Procore.Model.RfqChangeEventChangeEventStatus
    )
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
    |> Deserializer.deserialize(:rfqs, :list, Procore.Model.Rfq4)
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10ChangeEventsGet200ResponseInnerChangeEventLineItemsInnerCurrencyConfiguration
    )
  end
end
