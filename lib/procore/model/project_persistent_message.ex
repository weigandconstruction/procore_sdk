# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ProjectPersistentMessage do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :message,
    :title
  ]

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :title => String.t() | nil
        }

  def decode(value) do
    value
  end
end