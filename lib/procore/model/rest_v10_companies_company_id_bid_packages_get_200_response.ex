# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdBidPackagesGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :bidPackages
  ]

  @type t :: %__MODULE__{
          :bidPackages =>
            [Procore.Model.RestV10CompaniesCompanyIdBidPackagesGet200ResponseBidPackagesInner.t()]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bidPackages,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdBidPackagesGet200ResponseBidPackagesInner
    )
  end
end