# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseData do
  @moduledoc """
  Workflow preset details
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :valid,
    :default,
    :created_at,
    :updated_at,
    :template,
    :workflow_manager,
    :distribution_list,
    :responsible_group_memberships
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :valid => boolean() | nil,
          :default => boolean() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :template =>
            Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataTemplate.t()
            | nil,
          :workflow_manager =>
            Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataWorkflowManager.t()
            | nil,
          :distribution_list =>
            Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataDistributionList.t()
            | nil,
          :responsible_group_memberships =>
            [
              Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataResponsibleGroupMembershipsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :template,
      :struct,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataTemplate
    )
    |> Deserializer.deserialize(
      :workflow_manager,
      :struct,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataWorkflowManager
    )
    |> Deserializer.deserialize(
      :distribution_list,
      :struct,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataDistributionList
    )
    |> Deserializer.deserialize(
      :responsible_group_memberships,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsPresetsIdGet200ResponseDataResponsibleGroupMembershipsInner
    )
  end
end
