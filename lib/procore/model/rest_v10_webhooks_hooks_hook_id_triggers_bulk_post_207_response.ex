# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WebhooksHooksHookIdTriggersBulkPost207Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :success,
    :failed
  ]

  @type t :: %__MODULE__{
          :success => [Procore.Model.WebhooksTrigger.t()] | nil,
          :failed =>
            [Procore.Model.RestV10WebhooksHooksHookIdTriggersBulkPost207ResponseFailedInner.t()]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:success, :list, Procore.Model.WebhooksTrigger)
    |> Deserializer.deserialize(
      :failed,
      :list,
      Procore.Model.RestV10WebhooksHooksHookIdTriggersBulkPost207ResponseFailedInner
    )
  end
end