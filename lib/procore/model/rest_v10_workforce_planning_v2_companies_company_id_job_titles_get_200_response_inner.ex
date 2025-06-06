# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdJobTitlesGet200ResponseInner do
  @moduledoc """
  Schema representing a single Job Title.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :group_ids,
    :globally_accessible,
    :color,
    :type,
    :hourly_rate
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :group_ids => [String.t()] | nil,
          :globally_accessible => boolean() | nil,
          :color => String.t() | nil,
          :type => String.t() | nil,
          :hourly_rate => float() | nil
        }

  def decode(value) do
    value
  end
end
