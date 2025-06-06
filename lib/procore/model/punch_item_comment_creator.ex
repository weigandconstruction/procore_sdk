# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.PunchItemCommentCreator do
  @moduledoc """
  User that created the Punch Item Comment
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :login,
    :company_name
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :login => String.t() | nil,
          :company_name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
