# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdBidsGet200ResponseInner do
  @moduledoc """
  Summary
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :bid_package_id,
    :bid_package_title,
    :bid_form_title,
    :bid_status,
    :awarded,
    :company_id,
    :invitation_last_sent_at,
    :is_bidder_committed,
    :lump_sum_amount,
    :lump_sum_enabled,
    :submitted,
    :created_at,
    :updated_at,
    :due_date,
    :bidder_comments,
    :bid_requester,
    :vendor,
    :project
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :bid_package_id => integer() | nil,
          :bid_package_title => String.t() | nil,
          :bid_form_title => String.t() | nil,
          :bid_status => String.t() | nil,
          :awarded => boolean() | nil,
          :company_id => integer() | nil,
          :invitation_last_sent_at => DateTime.t() | nil,
          :is_bidder_committed => boolean() | nil,
          :lump_sum_amount => float() | nil,
          :lump_sum_enabled => boolean() | nil,
          :submitted => boolean() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :due_date => DateTime.t() | nil,
          :bidder_comments => String.t() | nil,
          :bid_requester => Procore.Model.BidBidRequester.t() | nil,
          :vendor => Procore.Model.BidVendor.t() | nil,
          :project => Procore.Model.BidProject.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:invitation_last_sent_at, :datetime, nil)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:due_date, :datetime, nil)
    |> Deserializer.deserialize(:bid_requester, :struct, Procore.Model.BidBidRequester)
    |> Deserializer.deserialize(:vendor, :struct, Procore.Model.BidVendor)
    |> Deserializer.deserialize(:project, :struct, Procore.Model.BidProject)
  end
end
