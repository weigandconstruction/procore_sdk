# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.UpdateSegmentOrderBodyUpdatedOrderInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :segment_id,
    :position
  ]

  @type t :: %__MODULE__{
          :segment_id => integer(),
          :position => integer()
        }

  def decode(value) do
    value
  end
end
