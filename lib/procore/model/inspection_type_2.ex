# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.InspectionType2 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :created_at,
    :updated_at,
    :audit_transaction_timestamp,
    :source_id,
    :deleted_at,
    :company_id,
    :is_deletable
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :audit_transaction_timestamp => DateTime.t() | nil,
          :source_id => integer() | nil,
          :deleted_at => DateTime.t() | nil,
          :company_id => integer() | nil,
          :is_deletable => boolean() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:audit_transaction_timestamp, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
  end
end
