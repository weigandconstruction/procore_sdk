# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimeAndMaterialEntry do
  @moduledoc """
  Timecard Time Type Object
  """

  @derive Jason.Encoder
  defstruct [
    :pay_rate
  ]

  @type t :: %__MODULE__{
          :pay_rate => boolean() | nil
        }

  def decode(value) do
    value
  end
end
