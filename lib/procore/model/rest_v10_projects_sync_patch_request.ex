# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsSyncPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :company_id,
    :updates
  ]

  @type t :: %__MODULE__{
          :company_id => integer(),
          :updates => [Procore.Model.RestV10ProjectsSyncPatchRequestUpdatesInner.t()]
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :updates,
      :list,
      Procore.Model.RestV10ProjectsSyncPatchRequestUpdatesInner
    )
  end
end