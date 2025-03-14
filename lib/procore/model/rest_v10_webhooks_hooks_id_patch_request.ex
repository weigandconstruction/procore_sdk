# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WebhooksHooksIdPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :company_id,
    :hook,
    :project_id
  ]

  @type t :: %__MODULE__{
          :company_id => integer(),
          :hook => Procore.Model.CompanyWebhook1Hook.t(),
          :project_id => integer()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:hook, :struct, Procore.Model.CompanyWebhook1Hook)
  end
end
