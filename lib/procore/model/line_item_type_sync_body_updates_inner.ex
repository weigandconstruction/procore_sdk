# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.LineItemTypeSyncBodyUpdatesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :csv_import_code,
    :base_type,
    :origin_data,
    :origin_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :csv_import_code => String.t() | nil,
          :base_type => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil
        }

  def decode(value) do
    value
  end
end