# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10TaskItemsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :task_item
  ]

  @type t :: %__MODULE__{
          :task_item => Procore.Model.RestV10TaskItemsPostRequestTaskItem.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :task_item,
      :struct,
      Procore.Model.RestV10TaskItemsPostRequestTaskItem
    )
  end
end
