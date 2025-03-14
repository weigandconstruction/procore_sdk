# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10PaymentApplicationsGet200ResponseInnerAllOfBillingPeriod do
  @moduledoc """
  Commitment Billing Period
  """

  @derive Jason.Encoder
  defstruct [
    :start_date,
    :end_date
  ]

  @type t :: %__MODULE__{
          :start_date => Date.t() | nil,
          :end_date => Date.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:start_date, :date, nil)
    |> Deserializer.deserialize(:end_date, :date, nil)
  end
end
