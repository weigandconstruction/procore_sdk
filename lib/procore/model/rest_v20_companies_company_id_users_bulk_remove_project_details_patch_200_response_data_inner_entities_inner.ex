# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdUsersBulkRemoveProjectDetailsPatch200ResponseDataInnerEntitiesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :userId,
    :projects
  ]

  @type t :: %__MODULE__{
          :userId => String.t() | nil,
          :projects =>
            [
              Procore.Model.RestV20CompaniesCompanyIdUsersBulkRemoveProjectDetailsPatch200ResponseDataInnerEntitiesInnerProjectsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :projects,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdUsersBulkRemoveProjectDetailsPatch200ResponseDataInnerEntitiesInnerProjectsInner
    )
  end
end
