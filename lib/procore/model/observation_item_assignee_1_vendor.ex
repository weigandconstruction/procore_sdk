# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ObservationItemAssignee1Vendor do
  @moduledoc """
  Company of User assigned to the Observation Item
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
