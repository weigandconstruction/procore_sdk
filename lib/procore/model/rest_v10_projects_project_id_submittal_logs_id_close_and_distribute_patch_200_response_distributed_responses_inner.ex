# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalLogsIdCloseAndDistributePatch200ResponseDistributedResponsesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :comment,
    :distributed_attachments,
    :response_name,
    :submittal_response,
    :submittal_response_id,
    :submittal_approver_id,
    :user_id,
    :user
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :comment => String.t() | nil,
          :distributed_attachments =>
            [Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t()] | nil,
          :response_name => String.t() | nil,
          :submittal_response =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerResponse.t()
            | nil,
          :submittal_response_id => integer() | nil,
          :submittal_approver_id => integer() | nil,
          :user_id => integer() | nil,
          :user =>
            Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInnerUsersInner.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :distributed_attachments,
      :list,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
    |> Deserializer.deserialize(
      :submittal_response,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerResponse
    )
    |> Deserializer.deserialize(
      :user,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInnerUsersInner
    )
  end
end