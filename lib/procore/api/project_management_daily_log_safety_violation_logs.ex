# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementDailyLogSafetyViolationLogs do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementDailyLogSafetyViolationLogs`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Safety Violation Logs
  Returns all Safety Violation Logs for the current date.  See [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) for information on filtering the response using the log\\_date, start\\_date, and end\\_date parameters. Note that if none of the date parameters are provided in the call, only logs from the current date are returned.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:log_date` (Date.t): Date of specific logs desired in YYYY-MM-DD format
    - `:start_date` (Date.t): Start date of specific logs desired in YYYY-MM-DD format (use together with end_date)
    - `:end_date` (Date.t): End date of specific logs desired in YYYY-MM-DD format (use together with start_date)
    - `:"filters[created_by_id]"` ([integer()]): Returns item(s) created by the specified User IDs.
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_safety_violation_logs_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_safety_violation_logs_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :log_date => :query,
      :start_date => :query,
      :end_date => :query,
      :"filters[created_by_id]" => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/safety_violation_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Safety Violation Log
  Delete single Safety Violation Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Safety Violation Log ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_safety_violation_logs_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_safety_violation_logs_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/safety_violation_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Safety Violation Logs
  Returns single Safety Violation Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Safety Violation Log ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_safety_violation_logs_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_safety_violation_logs_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/safety_violation_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Safety Violation Log
  Update single Safety Violation Log.  #### See - [Daily Log guide](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Safety Violation Log ID
  - `rest_v10_projects_project_id_safety_violation_logs_id_patch_request` (RestV10ProjectsProjectIdSafetyViolationLogsIdPatchRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_safety_violation_logs_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsIdPatchRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_safety_violation_logs_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v10_projects_project_id_safety_violation_logs_id_patch_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/safety_violation_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_safety_violation_logs_id_patch_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Safety Violation Log
  Creates single Safety Violation Log.  #### See - [Daily Log guide](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_safety_violation_logs_post_request` (RestV10ProjectsProjectIdSafetyViolationLogsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_safety_violation_logs_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_safety_violation_logs_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_safety_violation_logs_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/safety_violation_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, rest_v10_projects_project_id_safety_violation_logs_post_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10ProjectsProjectIdSafetyViolationLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end