# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BimPropertyFilesIdObjectsGet200ResponseInner do
  @moduledoc """
  BIM Model Object
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :value
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :value => String.t() | nil
        }

  def decode(value) do
    value
  end
end
