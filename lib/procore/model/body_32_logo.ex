# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body32Logo do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :upload_uuid,
    :file_name
  ]

  @type t :: %__MODULE__{
          :upload_uuid => String.t(),
          :file_name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
