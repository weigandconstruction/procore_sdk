# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Upload1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :segments
  ]

  @type t :: %__MODULE__{
          :segments => [Procore.Model.UploadSegmentsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:segments, :list, Procore.Model.UploadSegmentsInner)
  end
end
