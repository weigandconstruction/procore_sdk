# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalResponsesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :submittal_response
  ]

  @type t :: %__MODULE__{
          :submittal_response =>
            Procore.Model.RestV10ProjectsProjectIdSubmittalResponsesPostRequestSubmittalResponse.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :submittal_response,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdSubmittalResponsesPostRequestSubmittalResponse
    )
  end
end