# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectProjectIdEmailCommunicationsCommunicationIdEmailsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :email
  ]

  @type t :: %__MODULE__{
          :email =>
            Procore.Model.RestV10ProjectProjectIdEmailCommunicationsCommunicationIdEmailsPostRequestEmail.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :email,
      :struct,
      Procore.Model.RestV10ProjectProjectIdEmailCommunicationsCommunicationIdEmailsPostRequestEmail
    )
  end
end
