# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.OauthTokenInfoGet200ResponseApplication do
  @moduledoc """
  Application information
  """

  @derive Jason.Encoder
  defstruct [
    :uid
  ]

  @type t :: %__MODULE__{
          :uid => String.t() | nil
        }

  def decode(value) do
    value
  end
end
