# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body57 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :meeting,
    :attachments,
    :prostore_file_ids
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :meeting => Procore.Model.Meeting.t(),
          :attachments => [String.t()] | nil,
          :prostore_file_ids => [integer()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:meeting, :struct, Procore.Model.Meeting)
  end
end