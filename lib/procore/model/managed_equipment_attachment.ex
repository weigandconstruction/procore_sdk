# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ManagedEquipmentAttachment do
  @moduledoc """
  Equipment Attachment
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :presentation_url,
    :filename
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :presentation_url => String.t() | nil,
          :filename => String.t() | nil
        }

  def decode(value) do
    value
  end
end
