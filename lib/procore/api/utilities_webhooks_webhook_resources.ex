# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.UtilitiesWebhooksWebhookResources do
  @moduledoc """
  API calls for all endpoints tagged `UtilitiesWebhooksWebhookResources`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Webhooks Resources API Versions
  Returns the list of Webhook Resources API Versions for the given scope.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project. You must supply either a company_id or project_id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%String{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_webhooks_resources_api_versions_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(String)}
          | {:error, Tesla.Env.t()}
  def rest_v10_webhooks_resources_api_versions_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/webhooks/resources/api_versions")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Webhooks Resources
  Returns the list of Webhook Resources for the given scope.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project. You must supply either a company_id or project_id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%WebhooksResource{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_webhooks_resources_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(Procore.Model.WebhooksResource.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_webhooks_resources_get(connection, procore_company_id, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/webhooks/resources")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.WebhooksResource},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end