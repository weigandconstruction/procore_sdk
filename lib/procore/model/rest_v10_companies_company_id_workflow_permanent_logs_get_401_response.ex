# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :message,
    :fields,
    :reason,
    :error
  ]

  @type t :: %__MODULE__{
          :code => integer() | nil,
          :message => String.t() | nil,
          :fields => String.t() | nil,
          :reason => String.t() | nil,
          :error => String.t() | nil
        }

  def decode(value) do
    value
  end
end
