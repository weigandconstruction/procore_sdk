# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10SubmittalApproversIdPatchRequestSubmittalApproverForwardTo do
  @moduledoc """
  Params used only when forwarding for review. Designates who the new reviewer is and what their due date is
  """

  @derive Jason.Encoder
  defstruct [
    :user_id,
    :due_date
  ]

  @type t :: %__MODULE__{
          :user_id => integer(),
          :due_date => Date.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:due_date, :date, nil)
  end
end
