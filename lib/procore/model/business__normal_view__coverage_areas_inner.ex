# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BusinessNormalViewCoverageAreasInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :country_code,
    :google_place_id,
    :admin1,
    :admin2,
    :admin3,
    :admin4,
    :locality,
    :selected_level
  ]

  @type t :: %__MODULE__{
          :country_code => String.t() | nil,
          :google_place_id => String.t() | nil,
          :admin1 => String.t() | nil,
          :admin2 => String.t() | nil,
          :admin3 => String.t() | nil,
          :admin4 => String.t() | nil,
          :locality => String.t() | nil,
          :selected_level => String.t() | nil
        }

  def decode(value) do
    value
  end
end