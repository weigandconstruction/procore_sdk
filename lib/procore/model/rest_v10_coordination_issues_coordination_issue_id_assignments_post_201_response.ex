# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CoordinationIssuesCoordinationIssueIdAssignmentsPost201Response do
  @moduledoc """
  Coordination Issue Assignment
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :coordination_issue_id,
    :old_assignee_id,
    :new_assignee_id,
    :created_by_id,
    :created_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :coordination_issue_id => integer() | nil,
          :old_assignee_id => integer() | nil,
          :new_assignee_id => integer() | nil,
          :created_by_id => integer() | nil,
          :created_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
  end
end