# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body125BimModel do
  @moduledoc """
  BIM Model
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :auto_publish
  ]

  @type t :: %__MODULE__{
          :title => String.t(),
          :auto_publish => boolean() | nil
        }

  def decode(value) do
    value
  end
end