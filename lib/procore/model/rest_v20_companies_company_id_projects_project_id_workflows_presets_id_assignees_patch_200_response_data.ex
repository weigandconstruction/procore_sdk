# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdAssigneesPatch200ResponseData do
  @moduledoc """
  Result of the update
  """

  @derive Jason.Encoder
  defstruct [
    :workflow_manager_id,
    :responsible_group_memberships
  ]

  @type t :: %__MODULE__{
          :workflow_manager_id => String.t() | nil,
          :responsible_group_memberships =>
            [
              Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdAssigneesPatch200ResponseDataResponsibleGroupMembershipsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :responsible_group_memberships,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdAssigneesPatch200ResponseDataResponsibleGroupMembershipsInner
    )
  end
end
