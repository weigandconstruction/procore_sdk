# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Commitment1ChangeOrderRequestsInnerInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :deleted_at,
    :due_date,
    :invoiced_date,
    :number,
    :paid_date,
    :status,
    :title,
    :change_order_package_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :due_date => Date.t() | nil,
          :invoiced_date => Date.t() | nil,
          :number => String.t() | nil,
          :paid_date => Date.t() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :change_order_package_id => integer() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:due_date, :date, nil)
    |> Deserializer.deserialize(:invoiced_date, :date, nil)
    |> Deserializer.deserialize(:paid_date, :date, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end