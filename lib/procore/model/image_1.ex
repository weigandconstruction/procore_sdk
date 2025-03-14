# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Image1 do
  @moduledoc """
  At least one attribute is required even when an 'upload_uuid' key is provided. If an 'upload_uuid' is not provided above, then the 'data' key must be provided
  """

  @derive Jason.Encoder
  defstruct [
    :private,
    :provider_type,
    :provider_id,
    :data,
    :source,
    :description,
    :image_category_id,
    :location_id,
    :mt_location,
    :trade_ids,
    :log_date
  ]

  @type t :: %__MODULE__{
          :private => boolean() | nil,
          :provider_type => String.t() | nil,
          :provider_id => integer() | nil,
          :data => String.t() | nil,
          :source => String.t() | nil,
          :description => String.t() | nil,
          :image_category_id => integer() | nil,
          :location_id => integer() | nil,
          :mt_location => [String.t()] | nil,
          :trade_ids => [integer()] | nil,
          :log_date => String.t() | nil
        }

  def decode(value) do
    value
  end
end
