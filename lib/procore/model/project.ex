# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Project do
  @moduledoc """
  Project
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :country_code,
    :country_name,
    :state_code,
    :state_name,
    :county,
    :city,
    :address,
    :zip,
    :phone,
    :fax,
    :time_zone,
    :time_zone_name,
    :logo_url
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :country_code => String.t() | nil,
          :country_name => String.t() | nil,
          :state_code => String.t() | nil,
          :state_name => String.t() | nil,
          :county => String.t() | nil,
          :city => String.t() | nil,
          :address => String.t() | nil,
          :zip => String.t() | nil,
          :phone => String.t() | nil,
          :fax => String.t() | nil,
          :time_zone => String.t() | nil,
          :time_zone_name => String.t() | nil,
          :logo_url => String.t() | nil
        }

  def decode(value) do
    value
  end
end