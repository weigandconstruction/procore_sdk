# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkflowInstancesGet200ResponseInnerCurrentWorkflowActivitiesInnerWorkflowUserRole do
  @moduledoc """
  Workflow User Role
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :assignee
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :assignee =>
            Procore.Model.RestV10WorkflowInstancesGet200ResponseInnerCurrentWorkflowActivitiesInnerWorkflowUserRoleAssignee.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :assignee,
      :struct,
      Procore.Model.RestV10WorkflowInstancesGet200ResponseInnerCurrentWorkflowActivitiesInnerWorkflowUserRoleAssignee
    )
  end
end
