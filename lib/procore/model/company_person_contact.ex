# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CompanyPersonContact do
  @moduledoc """
  The contact associated with the Company Person.
  """

  @derive Jason.Encoder
  defstruct [
    :is_active,
    :email
  ]

  @type t :: %__MODULE__{
          :is_active => boolean() | nil,
          :email => String.t() | nil
        }

  def decode(value) do
    value
  end
end
