# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInnerUsersInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :login,
    :id,
    :name
  ]

  @type t :: %__MODULE__{
          :login => String.t() | nil,
          :id => integer() | nil,
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end