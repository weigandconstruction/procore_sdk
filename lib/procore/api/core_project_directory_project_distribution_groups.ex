# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreProjectDirectoryProjectDistributionGroups do
  @moduledoc """
  API calls for all endpoints tagged `CoreProjectDirectoryProjectDistributionGroups`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Project Distribution Groups
  Return a list of all Distribution Groups associated with a Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[search]"` (String.t): Returns item(s) matching the specified search query string.
    - `:sort` (String.t): Return items with the specified sort.
    - `:view` (String.t): Parameter affecting what level of detail will be returned from the endpoint. 'extended' will include the users included in each distribution group.
    - `:include_ancestors` (boolean()): Parameter affecting the scope for the Distribution Groups, by default is 'false' to only return the Distribution Groups at Project level. Setting it to 'true' will also include Distribution Groups at Company level.
    - `:domain_id` (integer()): Parameter affecting the scope for the Distribution Groups, by default it is the Domain ID of the Submittals Tool. Will return only Distributions Groups who users that have access to the Tool specified by the domain_id. Only applies to requests that also have include_ancestors set to 'true'.
    - `:min_ual` (integer()): Parameter affecting the scope for the Distribution Groups, by default it is the 'read' user access level. Will return only Distributions Groups who users that have the min ual specified by the 'min_ual'. Only applies to requests that also have include_ancestors set to 'true'.

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_distribution_groups_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_distribution_groups_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[search]" => :query,
      :sort => :query,
      :view => :query,
      :include_ancestors => :query,
      :domain_id => :query,
      :min_ual => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/distribution_groups")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Project Distribution Group
  Create a new Distribution Group associated with the given Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `create_distribution_group_body` (CreateDistributionGroupBody): 
  - `opts` (keyword): Optional parameters
    - `:"Idempotency-Token"` (String.t): Unique idempotent token

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_distribution_groups_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.CreateDistributionGroupBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsPost200Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdSubcontractorScheduleOfValuesStatusPatch404Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_distribution_groups_post(
        connection,
        procore_company_id,
        project_id,
        create_distribution_group_body,
        opts \\ []
      ) do
    optional_params = %{
      :"Idempotency-Token" => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/distribution_groups")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, create_distribution_group_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsPost200Response},
      {201, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsPost200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404,
       Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdSubcontractorScheduleOfValuesStatusPatch404Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end