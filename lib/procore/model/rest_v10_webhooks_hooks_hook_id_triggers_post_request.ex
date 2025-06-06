# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WebhooksHooksHookIdTriggersPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :company_id,
    :api_version,
    :trigger,
    :project_id
  ]

  @type t :: %__MODULE__{
          :company_id => integer(),
          :api_version => String.t(),
          :trigger => Procore.Model.CompanyTriggerTrigger.t(),
          :project_id => integer()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:trigger, :struct, Procore.Model.CompanyTriggerTrigger)
  end
end
