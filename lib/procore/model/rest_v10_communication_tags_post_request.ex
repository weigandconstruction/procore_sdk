# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CommunicationTagsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :communication_tag
  ]

  @type t :: %__MODULE__{
          :communication_tag =>
            Procore.Model.RestV10CommunicationTagsPostRequestCommunicationTag.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :communication_tag,
      :struct,
      Procore.Model.RestV10CommunicationTagsPostRequestCommunicationTag
    )
  end
end
