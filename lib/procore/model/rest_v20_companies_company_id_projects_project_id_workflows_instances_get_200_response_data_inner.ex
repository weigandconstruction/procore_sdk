# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesGet200ResponseDataInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :item_id,
    :tool_subtype,
    :tool_type,
    :created_at,
    :updated_at,
    :started_at,
    :ended_at
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :item_id => String.t() | nil,
          :tool_subtype => String.t() | nil,
          :tool_type => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :started_at => DateTime.t() | nil,
          :ended_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:started_at, :datetime, nil)
    |> Deserializer.deserialize(:ended_at, :datetime, nil)
  end
end
