# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdActionPlansPlanTemplateReferencesPostRequestPlanTemplateReferencePayload do
  @moduledoc """
  To upload an attachment you must upload the entire payload as `multipart/form-data` content-type
  """

  @derive Jason.Encoder
  defstruct [
    :attachment
  ]

  @type t :: %__MODULE__{
          :attachment => String.t() | nil
        }

  def decode(value) do
    value
  end
end