# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreSettingsPersonalSettings do
  @moduledoc """
  API calls for all endpoints tagged `CoreSettingsPersonalSettings`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Returns avatar of the current user

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_settings_my_avatar_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_settings_my_avatar_get(
        connection,
        procore_company_id,
        company_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/settings/my/avatar")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarGet200Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Bulk create/update UI flags
  Create or update UI flags associated with company, and user

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10CompaniesCompanyIdSettingsMyAvatarPutRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarPut200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_settings_my_avatar_put(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarPut200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_settings_my_avatar_put(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/rest/v1.0/companies/#{company_id}/settings/my/avatar")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdSettingsMyAvatarPut200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end