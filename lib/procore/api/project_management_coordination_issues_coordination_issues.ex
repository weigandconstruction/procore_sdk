# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementCoordinationIssuesCoordinationIssues do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementCoordinationIssuesCoordinationIssues`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Coordination Issues
  Lists Coordination Issues associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[assignee_company_id][]"` ([integer()]): Filter item(s) with matching assignee vendor companies.
    - `:"filters[assignee_id][]"` ([integer()]): Filter item(s) with matching assignees.
    - `:"filters[created_by_id][]"` ([integer()]): Filter item(s) with matching User IDs.
    - `:"filters[created_from][]"` ([String.t]): Filter item(s) with matching creation source.
    - `:"filters[ids][]"` ([integer()]): Filter item(s) with matching ids.
    - `:"filters[location_id][]"` ([integer()]): Filter item(s) with matching locations.
    - `:"filters[include_sublocations]"` (boolean()): Use together with `filters[location_id]` 
    - `:"filters[search]"` (String.t): Filter item(s) with the matching search query. The search is performed on title and issue number.
    - `:"filters[coordination_issue_file_id][]"` ([integer()]): Filter item(s) with the exact coordination issue file.
    - `:"filters[status][]"` ([String.t]): Filter item(s) with matching status.
    - `:"filters[issue_type][]"` ([String.t]): Filter item(s) with matching issue_type.
    - `:"filters[priority][]"` ([String.t]): Filter item(s) with matching priority.
    - `:"filters[trade_id][]"` ([integer()]): Filter item(s) with matching trades.
    - `:"filters[updated_at]"` (String.t): Filter item(s) within a specific updated at iso8601 datetime range.
    - `:"filters[due_date]"` (String.t): Filter item(s) within a specific due date iso8601 date range.
    - `:"filters[created_at]"` (String.t): Filter item(s) within a specific created at iso8601 datetime range.
    - `:sort` (String.t): Sort item(s) by an attribute. The default sort is ascending. To sort in descending order, prepend the sort value with a hyphen character '-'
    - `:view` (String.t): The compact view contains only ids. The normal view is a subset of the response shown below, and does not include attachments, viewpoints, linked items and updated_by The extended view contains the response shown below. The default view is normal.
    - `:viewpoint_format` (String.t): Specify viewpoint data format. This parameter functions only when the query parameter view is 'extended' The default format returns the viewpoint content as saved. The procore format returns the viewpoint content converted to Procore format. If a valid conversion is not possible, empty viewpoint is returned.
    - `:save_sticky_filters` (boolean()): Persists filter parameters for the requesting user and project.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_get(connection, procore_company_id, project_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[assignee_company_id][]" => :query,
      :"filters[assignee_id][]" => :query,
      :"filters[created_by_id][]" => :query,
      :"filters[created_from][]" => :query,
      :"filters[ids][]" => :query,
      :"filters[location_id][]" => :query,
      :"filters[include_sublocations]" => :query,
      :"filters[search]" => :query,
      :"filters[coordination_issue_file_id][]" => :query,
      :"filters[status][]" => :query,
      :"filters[issue_type][]" => :query,
      :"filters[priority][]" => :query,
      :"filters[trade_id][]" => :query,
      :"filters[updated_at]" => :query,
      :"filters[due_date]" => :query,
      :"filters[created_at]" => :query,
      :sort => :query,
      :view => :query,
      :viewpoint_format => :query,
      :save_sticky_filters => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Coordination Issue
  Delete a Coordination Issue from the system

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Coordination Issue ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_id_delete(
        connection,
        procore_company_id,
        id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/coordination_issues/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Coordination Issue
  Return a single Coordination Issue item.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Coordination Issue ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): The compact view contains only ids. The normal view is a subset of the response shown below, and does not include attachments, viewpoints, linked items and updated_by The extended view contains the response shown below. The default view is normal.
    - `:viewpoint_format` (String.t): Specify viewpoint data format. This parameter functions only when the query parameter view is 'extended' The default format returns the viewpoint content as saved. The procore format returns the viewpoint content converted to Procore format. If a valid conversion is not possible, empty viewpoint is returned.

  ### Returns

  - `{:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_id_get(
        connection,
        procore_company_id,
        id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query,
      :viewpoint_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Coordination Issue
  Update a Coordination Issue item

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Coordination Issue ID
  - `body108` (Body108): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body108.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_id_patch(
        connection,
        procore_company_id,
        id,
        body108,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/coordination_issues/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body108)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Coordination Issue
  Create a Coordination Issue in a Project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `body107` (Body107): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_post(
          Tesla.Env.client(),
          integer(),
          Procore.Model.Body107.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_post(connection, procore_company_id, body107, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/coordination_issues")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body107)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10CoordinationIssuesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
