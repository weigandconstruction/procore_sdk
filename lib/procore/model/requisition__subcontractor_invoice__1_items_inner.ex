# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RequisitionSubcontractorInvoice1ItemsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :line_item_id,
    :detail_line_item_id,
    :item_type,
    :work_completed_this_period,
    :materials_presently_stored,
    :materials_presently_stored_from_previous_progress,
    :new_materials,
    :stored_materials,
    :work_completed_retainage_retained_this_period,
    :materials_stored_retainage_currently_retained,
    :work_completed_retainage_released_this_period,
    :work_completed_this_period_quantity,
    :work_completed_retainage_percent_this_period,
    :materials_stored_retainage_percent_this_period,
    :subcontractor_claimed_amount,
    :status,
    :comment
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :line_item_id => integer() | nil,
          :detail_line_item_id => integer() | nil,
          :item_type => String.t(),
          :work_completed_this_period => String.t() | nil,
          :materials_presently_stored => String.t() | nil,
          :materials_presently_stored_from_previous_progress => String.t() | nil,
          :new_materials => String.t() | nil,
          :stored_materials => String.t() | nil,
          :work_completed_retainage_retained_this_period => String.t() | nil,
          :materials_stored_retainage_currently_retained => String.t() | nil,
          :work_completed_retainage_released_this_period => String.t() | nil,
          :work_completed_this_period_quantity => String.t() | nil,
          :work_completed_retainage_percent_this_period => String.t() | nil,
          :materials_stored_retainage_percent_this_period => String.t() | nil,
          :subcontractor_claimed_amount => String.t() | nil,
          :status => String.t() | nil,
          :comment => String.t() | nil
        }

  def decode(value) do
    value
  end
end