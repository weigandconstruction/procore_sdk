# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsWorkflowManagersGet200Response do
  @moduledoc """
  Workflow Managers (Index)
  """

  @derive Jason.Encoder
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data =>
            [
              Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsWorkflowManagersGet200ResponseDataInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :data,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsWorkflowManagersGet200ResponseDataInner
    )
  end
end
