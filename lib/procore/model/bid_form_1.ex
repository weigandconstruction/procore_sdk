# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BidForm1 do
  @moduledoc """
  Bid Form
  """

  @derive Jason.Encoder
  defstruct [
    :company_id,
    :project_id,
    :accounting_method,
    :company_name,
    :project_name,
    :base_bid_totals,
    :base_bid,
    :alternates,
    :lump_sum_enabled,
    :title
  ]

  @type t :: %__MODULE__{
          :company_id => integer() | nil,
          :project_id => integer() | nil,
          :accounting_method => String.t() | nil,
          :company_name => String.t() | nil,
          :project_name => String.t() | nil,
          :base_bid_totals => [Procore.Model.BidFormBaseBidSectionSectionTotalsInner.t()] | nil,
          :base_bid => [Procore.Model.BidFormBaseBidSectionBidFormItemsInner.t()] | nil,
          :alternates => [Procore.Model.BidFormBaseBidSectionBidFormItemsInner.t()] | nil,
          :lump_sum_enabled => boolean() | nil,
          :title => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :base_bid_totals,
      :list,
      Procore.Model.BidFormBaseBidSectionSectionTotalsInner
    )
    |> Deserializer.deserialize(
      :base_bid,
      :list,
      Procore.Model.BidFormBaseBidSectionBidFormItemsInner
    )
    |> Deserializer.deserialize(
      :alternates,
      :list,
      Procore.Model.BidFormBaseBidSectionBidFormItemsInner
    )
  end
end