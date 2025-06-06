# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdIncidentsHarmSourcesBulkUpdatePatchRequestHarmSource do
  @moduledoc """
  IDs of all Harm Sources specified for bulk update
  """

  @derive Jason.Encoder
  defstruct [
    :ids,
    :active
  ]

  @type t :: %__MODULE__{
          :ids => [integer()] | nil,
          :active => boolean() | nil
        }

  def decode(value) do
    value
  end
end
