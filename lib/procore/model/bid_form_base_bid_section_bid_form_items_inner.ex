# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BidFormBaseBidSectionBidFormItemsInner do
  @moduledoc """
  A row of bid items for a cost code
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :cost_code_id,
    :full_code,
    :name,
    :description,
    :number,
    :item_type,
    :subject,
    :response_type,
    :bid_items
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :cost_code_id => integer() | nil,
          :full_code => String.t() | nil,
          :name => String.t() | nil,
          :description => String.t() | nil,
          :number => String.t() | nil,
          :item_type => String.t() | nil,
          :subject => String.t() | nil,
          :response_type => String.t() | nil,
          :bid_items =>
            [Procore.Model.BidFormBaseBidSectionBidFormItemsInnerBidItemsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bid_items,
      :list,
      Procore.Model.BidFormBaseBidSectionBidFormItemsInnerBidItemsInner
    )
  end
end
