# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body118 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :procore_item
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :procore_item => Procore.Model.ProcoreItemDetails1.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:procore_item, :struct, Procore.Model.ProcoreItemDetails1)
  end
end