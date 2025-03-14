# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdDirectCostsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :amount,
    :created_at,
    :deleted_at,
    :description,
    :direct_cost_type,
    :direct_cost_date,
    :grand_total,
    :invoice_number,
    :origin_data,
    :origin_id,
    :payment_date,
    :received_date,
    :status,
    :terms,
    :updated_at,
    :vendor,
    :vendor_id,
    :vendor_name,
    :currency_configuration,
    :employee
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :amount => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :direct_cost_type => String.t() | nil,
          :direct_cost_date => Date.t() | nil,
          :grand_total => String.t() | nil,
          :invoice_number => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :payment_date => Date.t() | nil,
          :received_date => Date.t() | nil,
          :status => String.t() | nil,
          :terms => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :vendor => String.t() | nil,
          :vendor_id => integer() | nil,
          :vendor_name => String.t() | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfCurrencyConfiguration.t()
            | nil,
          :employee =>
            Procore.Model.RestV11ProjectsProjectIdDirectCostsGet200ResponseInnerEmployee.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:direct_cost_date, :date, nil)
    |> Deserializer.deserialize(:payment_date, :date, nil)
    |> Deserializer.deserialize(:received_date, :date, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfCurrencyConfiguration
    )
    |> Deserializer.deserialize(
      :employee,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdDirectCostsGet200ResponseInnerEmployee
    )
  end
end
