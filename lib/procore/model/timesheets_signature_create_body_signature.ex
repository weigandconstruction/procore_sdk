# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimesheetsSignatureCreateBodySignature do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data,
    :user_id,
    :signature_text,
    :upload_id
  ]

  @type t :: %__MODULE__{
          :data => String.t(),
          :user_id => integer(),
          :signature_text => String.t() | nil,
          :upload_id => String.t() | nil
        }

  def decode(value) do
    value
  end
end
