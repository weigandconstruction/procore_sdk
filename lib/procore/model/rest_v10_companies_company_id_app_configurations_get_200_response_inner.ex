# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdAppConfigurationsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :app_installation_id,
    :company_id,
    :manifest_url,
    :projects,
    :id,
    :title,
    :created_by,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :app_installation_id => integer() | nil,
          :company_id => integer() | nil,
          :manifest_url => String.t() | nil,
          :projects =>
            [
              Procore.Model.RestV10CompaniesCompanyIdAppConfigurationsGet200ResponseInnerProjectsInner.t()
            ]
            | nil,
          :id => integer() | nil,
          :title => String.t() | nil,
          :created_by =>
            Procore.Model.RestV10CompaniesCompanyIdAppConfigurationsGet200ResponseInnerAllOfCreatedBy.t()
            | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :projects,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdAppConfigurationsGet200ResponseInnerProjectsInner
    )
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdAppConfigurationsGet200ResponseInnerAllOfCreatedBy
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end