# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdActionPlansVerificationMethodsPostRequestVerificationMethod do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :active,
    :name
  ]

  @type t :: %__MODULE__{
          :active => boolean() | nil,
          :name => String.t()
        }

  def decode(value) do
    value
  end
end