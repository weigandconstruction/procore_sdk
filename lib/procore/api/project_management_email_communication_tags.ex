# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementEmailCommunicationTags do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementEmailCommunicationTags`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List communication tags
  List communication tags on a given project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_communication_tags_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_communication_tags_get(connection, procore_company_id, project_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/communication_tags")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create communication tag
  Create a communication tag on a given project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_communication_tags_post_request` (RestV10CommunicationTagsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_communication_tags_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10CommunicationTagsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_communication_tags_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_communication_tags_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/communication_tags")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:body, :body, rest_v10_communication_tags_post_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner},
      {201, Procore.Model.RestV10CommunicationsIdGet200ResponseAllOfCommunicationTagsInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
