# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdScheduleResourcesGet200Response do
  @moduledoc """
  Schedule Resources
  """

  @derive Jason.Encoder
  defstruct [
    :resources
  ]

  @type t :: %__MODULE__{
          :resources =>
            [
              Procore.Model.RestV10CompaniesCompanyIdScheduleResourcesGet200ResponseResourcesInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :resources,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdScheduleResourcesGet200ResponseResourcesInner
    )
  end
end