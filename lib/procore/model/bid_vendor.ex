# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BidVendor do
  @moduledoc """
  Bid Vendor Info
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :avatar_url,
    :trades
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :avatar_url => String.t() | nil,
          :trades => String.t() | nil
        }

  def decode(value) do
    value
  end
end
