# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ChangeEventsGet200ResponseInnerChangeEventLineItemsInnerBiller do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :model_name,
    :guid
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :model_name => String.t() | nil,
          :guid => String.t() | nil
        }

  def decode(value) do
    value
  end
end