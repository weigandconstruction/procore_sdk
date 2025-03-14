# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BusinessNormalViewTags do
  @moduledoc """
  Tags to indicate the current status of business
  """

  @derive Jason.Encoder
  defstruct [
    :claim_status,
    :approval_status,
    :publishable
  ]

  @type t :: %__MODULE__{
          :claim_status => String.t() | nil,
          :approval_status => String.t() | nil,
          :publishable => String.t() | nil
        }

  def decode(value) do
    value
  end
end
