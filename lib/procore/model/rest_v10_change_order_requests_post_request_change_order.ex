# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ChangeOrderRequestsPostRequestChangeOrder do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :change_order_package_id,
    :description,
    :due_date,
    :grand_total,
    :invoiced_date,
    :origin_data,
    :origin_id,
    :paid_date,
    :schedule_impact_amount,
    :status,
    :title
  ]

  @type t :: %__MODULE__{
          :change_order_package_id => integer() | nil,
          :description => String.t() | nil,
          :due_date => DateTime.t() | nil,
          :grand_total => float() | nil,
          :invoiced_date => Date.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :paid_date => Date.t() | nil,
          :schedule_impact_amount => integer() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:due_date, :datetime, nil)
    |> Deserializer.deserialize(:invoiced_date, :date, nil)
    |> Deserializer.deserialize(:paid_date, :date, nil)
  end
end