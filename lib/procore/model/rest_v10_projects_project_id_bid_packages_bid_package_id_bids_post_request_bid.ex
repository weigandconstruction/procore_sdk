# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidsPostRequestBid do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :vendor_id,
    :lump_sum_amount,
    :bidder_comments,
    :is_bidder_committed,
    :submitted,
    :recipient_ids
  ]

  @type t :: %__MODULE__{
          :vendor_id => integer(),
          :lump_sum_amount => float() | nil,
          :bidder_comments => String.t() | nil,
          :is_bidder_committed => boolean() | nil,
          :submitted => boolean() | nil,
          :recipient_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end