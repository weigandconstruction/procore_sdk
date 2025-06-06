# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10PaymentApplicationsGet200ResponseInnerAllOfG702 do
  @moduledoc """
  Payment Application (Owner Invoice) summary
  """

  @derive Jason.Encoder
  defstruct [
    :balance_to_finish_including_retainage,
    :completed_work_retainage_percent,
    :completed_work_retainage_amount,
    :contract_sum_to_date,
    :current_payment_due,
    :formatted_period,
    :less_previous_certificates_for_payment,
    :negative_change_order_item_total,
    :negative_new_change_order_item_total,
    :negative_previous_change_order_item_total,
    :net_change_by_change_orders,
    :original_contract_sum,
    :positive_change_order_item_total,
    :positive_new_change_order_item_total,
    :positive_previous_change_order_item_total,
    :stored_materials_retainage_amount,
    :stored_materials_retainage_percent,
    :tax_applicable_to_this_payment,
    :total_completed_and_stored_to_date,
    :total_earned_less_retainage,
    :total_retainage
  ]

  @type t :: %__MODULE__{
          :balance_to_finish_including_retainage => String.t() | nil,
          :completed_work_retainage_percent => String.t() | nil,
          :completed_work_retainage_amount => String.t() | nil,
          :contract_sum_to_date => String.t() | nil,
          :current_payment_due => String.t() | nil,
          :formatted_period => String.t() | nil,
          :less_previous_certificates_for_payment => String.t() | nil,
          :negative_change_order_item_total => String.t() | nil,
          :negative_new_change_order_item_total => String.t() | nil,
          :negative_previous_change_order_item_total => String.t() | nil,
          :net_change_by_change_orders => String.t() | nil,
          :original_contract_sum => String.t() | nil,
          :positive_change_order_item_total => String.t() | nil,
          :positive_new_change_order_item_total => String.t() | nil,
          :positive_previous_change_order_item_total => String.t() | nil,
          :stored_materials_retainage_amount => String.t() | nil,
          :stored_materials_retainage_percent => String.t() | nil,
          :tax_applicable_to_this_payment => String.t() | nil,
          :total_completed_and_stored_to_date => String.t() | nil,
          :total_earned_less_retainage => String.t() | nil,
          :total_retainage => String.t() | nil
        }

  def decode(value) do
    value
  end
end
