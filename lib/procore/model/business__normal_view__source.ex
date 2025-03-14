# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BusinessNormalViewSource do
  @moduledoc """
  Information about where the business information was sourced from
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :source,
    :type,
    :record_type
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :source => String.t() | nil,
          :type => String.t() | nil,
          :record_type => String.t() | nil
        }

  def decode(value) do
    value
  end
end
