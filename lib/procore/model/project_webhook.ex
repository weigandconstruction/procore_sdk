# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ProjectWebhook do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :hook
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :hook => Procore.Model.CompanyWebhookHook.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:hook, :struct, Procore.Model.CompanyWebhookHook)
  end
end