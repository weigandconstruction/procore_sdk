# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsGetDefaultResponseError do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :message,
    :details
  ]

  @type t :: %__MODULE__{
          :code => String.t(),
          :message => String.t(),
          :details => [Procore.Model.RestV10ProjectsGetDefaultResponseErrorDetailsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :details,
      :list,
      Procore.Model.RestV10ProjectsGetDefaultResponseErrorDetailsInner
    )
  end
end