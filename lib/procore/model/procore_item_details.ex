# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ProcoreItemDetails do
  @moduledoc """
  Details of Procore item to be linked to a CoordinationIssue
  """

  @derive Jason.Encoder
  defstruct [
    :item_id,
    :item_type
  ]

  @type t :: %__MODULE__{
          :item_id => integer(),
          :item_type => String.t()
        }

  def decode(value) do
    value
  end
end