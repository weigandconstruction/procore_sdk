# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBidding do
  @moduledoc """
  Bidding status
  """

  @derive Jason.Encoder
  defstruct [
    :affirmative_action,
    :african_american_business,
    :asian_american_business,
    :certified_business_enterprise,
    :disadvantaged_business,
    :eight_a_business,
    :hispanic_business,
    :historically_underutilized_business,
    :minority_business_enterprise,
    :native_american_business,
    :sdvo_business,
    :small_business,
    :womens_business
  ]

  @type t :: %__MODULE__{
          :affirmative_action => boolean() | nil,
          :african_american_business => boolean() | nil,
          :asian_american_business => boolean() | nil,
          :certified_business_enterprise => boolean() | nil,
          :disadvantaged_business => boolean() | nil,
          :eight_a_business => boolean() | nil,
          :hispanic_business => boolean() | nil,
          :historically_underutilized_business => boolean() | nil,
          :minority_business_enterprise => boolean() | nil,
          :native_american_business => boolean() | nil,
          :sdvo_business => boolean() | nil,
          :small_business => boolean() | nil,
          :womens_business => boolean() | nil
        }

  def decode(value) do
    value
  end
end