# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.WorkforceManagementWorkforcePlanningResourceRequests do
  @moduledoc """
  API calls for all endpoints tagged `WorkforceManagementWorkforcePlanningResourceRequests`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Get All Resource Requests for Projects in a Single Group
  Retrieves all Resource Requests for projects within a specified group. This is a pageable endpoint. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `group_id` (integer()): Unique identifier for the group
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): This is a **0-based index** representing the page slice of the data you want to retrieve. Each page contains up to **400 items**. ### **📌 Pageable Endpoints** People endpoints that return multiple records **support pagination**. It is recommended to use this feature to prevent network timeouts from excessively large data requests. ### **📌 Response Structure** A successful response will include the following properties: - **`possible_pages`** *(integer)* → Total number of pages available to retrieve all data. - **`current_page`** *(integer)* → The **0-based index** of the page retrieved. - **`data`** *(array)* → List of records returned for the requested page (up to 400 items per page). If a **page value exceeds** `possible_pages`, the `data` property will return an **empty array**. 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_groups_group_id_resource_requests_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_groups_group_id_resource_requests_get(
        connection,
        procore_company_id,
        company_id,
        group_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/groups/#{group_id}/resource-requests"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Get All Resource Requests for a Single Project
  Retrieves all Resource Requests for a specified Project within a company. This is a pageable endpoint. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `project_id` (integer()): Unique identifier for the project
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): This is a **0-based index** representing the page slice of the data you want to retrieve. Each page contains up to **400 items**. ### **📌 Pageable Endpoints** People endpoints that return multiple records **support pagination**. It is recommended to use this feature to prevent network timeouts from excessively large data requests. ### **📌 Response Structure** A successful response will include the following properties: - **`possible_pages`** *(integer)* → Total number of pages available to retrieve all data. - **`current_page`** *(integer)* → The **0-based index** of the page retrieved. - **`data`** *(array)* → List of records returned for the requested page (up to 400 items per page). If a **page value exceeds** `possible_pages`, the `data` property will return an **empty array**. 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_projects_project_id_resource_requests_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_projects_project_id_resource_requests_get(
        connection,
        procore_company_id,
        company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/projects/#{project_id}/resource-requests"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Create a Resource Request on a Project
  Creates a new Resource Request for a specified project within a given company. Resource requests can be based on work hours (start_time and end_time) or percent allocation (percent_allocated). 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `project_id` (integer()): Unique identifier for the project
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_projects_project_id_resource_requests_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_projects_project_id_resource_requests_post(
        connection,
        procore_company_id,
        company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/projects/#{project_id}/resource-requests"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Get All Resource Requests in a Company
  Retrieves all Resource Requests across a company. This is a pageable endpoint. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): This is a **0-based index** representing the page slice of the data you want to retrieve. Each page contains up to **400 items**. ### **📌 Pageable Endpoints** People endpoints that return multiple records **support pagination**. It is recommended to use this feature to prevent network timeouts from excessively large data requests. ### **📌 Response Structure** A successful response will include the following properties: - **`possible_pages`** *(integer)* → Total number of pages available to retrieve all data. - **`current_page`** *(integer)* → The **0-based index** of the page retrieved. - **`data`** *(array)* → List of records returned for the requested page (up to 400 items per page). If a **page value exceeds** `possible_pages`, the `data` property will return an **empty array**. 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_resource_requests_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_resource_requests_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/resource-requests")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsGet200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Delete a Resource Request
  Deletes an existing Resource Request within a company. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `request_id` (String.t): Unique identifier for the Resource Request.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdResourceRequestsRequestIdDelete200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_resource_requests_request_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdResourceRequestsRequestIdDelete200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_resource_requests_request_id_delete(
        connection,
        procore_company_id,
        company_id,
        request_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/resource-requests/#{request_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdResourceRequestsRequestIdDelete200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Update a Single Resource Request
  Updates an existing Resource Request within a company. Only specified properties in the request body will be updated. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `request_id` (String.t): Unique identifier for the Resource Request.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdResourceRequestsRequestIdPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_resource_requests_request_id_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_resource_requests_request_id_post(
        connection,
        procore_company_id,
        company_id,
        request_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/resource-requests/#{request_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdResourceRequestsPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end
end
