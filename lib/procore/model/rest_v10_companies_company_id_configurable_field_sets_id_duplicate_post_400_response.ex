# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdDuplicatePost400Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :valid,
    :errors
  ]

  @type t :: %__MODULE__{
          :valid => boolean() | nil,
          :errors => String.t() | nil
        }

  def decode(value) do
    value
  end
end
