# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalResponsesPostRequestSubmittalResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :considered
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :considered => String.t()
        }

  def decode(value) do
    value
  end
end
