# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.DistributionGroup do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :description,
    :user_ids
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t() | nil,
          :user_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end