# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdDistributionGroupsGetWithDomainUsersParameter do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :domain_id,
    :provider_id
  ]

  @type t :: %__MODULE__{
          :domain_id => integer() | nil,
          :provider_id => integer() | nil
        }

  def decode(value) do
    value
  end
end