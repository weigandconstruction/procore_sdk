# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.SubJobSyncBodyUpdatesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :code,
    :origin_id,
    :origin_data
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :code => String.t() | nil,
          :origin_id => String.t() | nil,
          :origin_data => String.t() | nil
        }

  def decode(value) do
    value
  end
end
