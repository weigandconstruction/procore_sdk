# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfDistributionMembersInner do
  @moduledoc """
  Normal view of task item distribution member
  """

  @derive Jason.Encoder
  defstruct [
    :login,
    :id,
    :name,
    :date_notified
  ]

  @type t :: %__MODULE__{
          :login => String.t() | nil,
          :id => integer() | nil,
          :name => String.t() | nil,
          :date_notified => Date.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date_notified, :date, nil)
  end
end
