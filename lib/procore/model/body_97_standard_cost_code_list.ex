# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body97StandardCostCodeList do
  @moduledoc """
  Standard Cost Code List Updates
  """

  @derive Jason.Encoder
  defstruct [
    :name
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end