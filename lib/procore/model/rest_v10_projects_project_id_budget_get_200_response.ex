# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdBudgetGet200Response do
  @moduledoc """
  Budget
  """

  @derive Jason.Encoder
  defstruct [
    :locked
  ]

  @type t :: %__MODULE__{
          :locked => boolean() | nil
        }

  def decode(value) do
    value
  end
end
