# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdScheduleLookaheadsIdGet200ResponseLookaheadTasksInnerResourcesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :company_id,
    :deleted_at,
    :project_id,
    :source_uid
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :company_id => integer() | nil,
          :deleted_at => DateTime.t() | nil,
          :project_id => integer() | nil,
          :source_uid => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
  end
end
