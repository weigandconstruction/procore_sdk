# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ProjectStage3 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :is_bidding_stage,
    :name,
    :category
  ]

  @type t :: %__MODULE__{
          :is_bidding_stage => boolean() | nil,
          :name => String.t() | nil,
          :category => String.t() | nil
        }

  def decode(value) do
    value
  end
end
