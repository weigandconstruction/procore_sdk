# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Form1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :description,
    :form_template_id,
    :private,
    :fillable_pdf,
    :attachments
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :form_template_id => integer(),
          :private => boolean() | nil,
          :fillable_pdf => String.t(),
          :attachments => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
