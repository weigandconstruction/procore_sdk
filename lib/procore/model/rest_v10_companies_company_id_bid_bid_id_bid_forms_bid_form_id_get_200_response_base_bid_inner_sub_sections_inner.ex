# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200ResponseBaseBidInnerSubSectionsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :position,
    :bid_form_items
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :title => String.t() | nil,
          :position => integer() | nil,
          :bid_form_items =>
            [
              Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200ResponseBaseBidInnerBidFormItemsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bid_form_items,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200ResponseBaseBidInnerBidFormItemsInner
    )
  end
end