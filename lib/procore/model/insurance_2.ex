# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Insurance2 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :effective_date,
    :enable_expired_insurance_notifications,
    :exempt,
    :expiration_date,
    :info_received,
    :insurance_type,
    :limit,
    :name,
    :notes,
    :policy_number,
    :status,
    :additional_insured,
    :division_template,
    :insurance_sets,
    :origin_data,
    :origin_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :effective_date => Date.t() | nil,
          :enable_expired_insurance_notifications => boolean() | nil,
          :exempt => boolean() | nil,
          :expiration_date => Date.t() | nil,
          :info_received => boolean() | nil,
          :insurance_type => String.t() | nil,
          :limit => String.t() | nil,
          :name => String.t() | nil,
          :notes => String.t() | nil,
          :policy_number => String.t() | nil,
          :status => String.t() | nil,
          :additional_insured => String.t() | nil,
          :division_template => String.t() | nil,
          :insurance_sets => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:effective_date, :date, nil)
    |> Deserializer.deserialize(:expiration_date, :date, nil)
  end
end
