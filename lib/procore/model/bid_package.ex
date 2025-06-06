# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BidPackage do
  @moduledoc """
  Bid Package Object
  """

  @derive Jason.Encoder
  defstruct [
    :bid_due_date,
    :bid_email_message,
    :bid_web_message,
    :title,
    :accounting_method,
    :bid_submission_confirmation,
    :anticipated_award_date,
    :number,
    :distribution_ids,
    :blind_bidding,
    :pre_bid_walk_through_date,
    :pre_bid_walk_through_notes,
    :enable_prebid_walkthrough,
    :manager_id,
    :require_nda,
    :display_project_name,
    :prostore_file_ids
  ]

  @type t :: %__MODULE__{
          :bid_due_date => DateTime.t(),
          :bid_email_message => String.t(),
          :bid_web_message => String.t(),
          :title => String.t(),
          :accounting_method => String.t() | nil,
          :bid_submission_confirmation => String.t() | nil,
          :anticipated_award_date => Date.t() | nil,
          :number => String.t() | nil,
          :distribution_ids => [integer()] | nil,
          :blind_bidding => boolean() | nil,
          :pre_bid_walk_through_date => DateTime.t() | nil,
          :pre_bid_walk_through_notes => String.t() | nil,
          :enable_prebid_walkthrough => boolean() | nil,
          :manager_id => integer() | nil,
          :require_nda => boolean() | nil,
          :display_project_name => boolean() | nil,
          :prostore_file_ids => [integer()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:bid_due_date, :datetime, nil)
    |> Deserializer.deserialize(:anticipated_award_date, :date, nil)
    |> Deserializer.deserialize(:pre_bid_walk_through_date, :datetime, nil)
  end
end
