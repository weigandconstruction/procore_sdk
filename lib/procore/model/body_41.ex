# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body41 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_bid_type
  ]

  @type t :: %__MODULE__{
          :project_bid_type => Procore.Model.ProjectBidType3.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:project_bid_type, :struct, Procore.Model.ProjectBidType3)
  end
end
