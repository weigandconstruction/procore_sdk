# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CoordinationIssuesIdStatusChangesGet200ResponseInner do
  @moduledoc """
  Coordination Issue Status Change
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :coordination_issue_id,
    :old_status,
    :new_status,
    :created_by_id,
    :created_by,
    :linked_rfi,
    :linked_observation_item,
    :created_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :coordination_issue_id => integer() | nil,
          :old_status => String.t() | nil,
          :new_status => String.t() | nil,
          :created_by_id => integer() | nil,
          :created_by => Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee.t() | nil,
          :linked_rfi =>
            Procore.Model.RestV10CoordinationIssuesGet200ResponseInnerAllOfLinkedProcoreItemsInner.t()
            | nil,
          :linked_observation_item =>
            Procore.Model.RestV10CoordinationIssuesGet200ResponseInnerAllOfLinkedObservationItemsInner.t()
            | nil,
          :created_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee
    )
    |> Deserializer.deserialize(
      :linked_rfi,
      :struct,
      Procore.Model.RestV10CoordinationIssuesGet200ResponseInnerAllOfLinkedProcoreItemsInner
    )
    |> Deserializer.deserialize(
      :linked_observation_item,
      :struct,
      Procore.Model.RestV10CoordinationIssuesGet200ResponseInnerAllOfLinkedObservationItemsInner
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
  end
end
