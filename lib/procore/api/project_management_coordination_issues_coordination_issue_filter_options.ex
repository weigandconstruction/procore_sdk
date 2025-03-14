# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementCoordinationIssuesCoordinationIssueFilterOptions do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementCoordinationIssuesCoordinationIssueFilterOptions`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Assignee Company Filter Options
  Returns a list of available assignee vendor filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[bim_file_id]"` (integer()): Filter item(s) with matching BIM File ids
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsAssigneeCompanyIdGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_assignee_company_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeCompanyIdGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_assignee_company_id_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[bim_file_id]" => :query,
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/assignee_company_id")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeCompanyIdGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Assignee Filter Options
  Returns a list of available assignee filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[bim_file_id]"` (integer()): Filter item(s) with matching BIM File ids
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_assignee_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_assignee_id_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[bim_file_id]" => :query,
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/assignee_id")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Coordination Issue File Filter Options
  Returns a list of available source file filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsCoordinationIssueFileIdGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_coordination_issue_file_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsCoordinationIssueFileIdGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_coordination_issue_file_id_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/coordination_issue_file_id")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CoordinationIssuesFilterOptionsCoordinationIssueFileIdGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Creator Filter Options
  Returns a list of available creator filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[bim_file_id]"` (integer()): Filter item(s) with matching BIM File ids
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_created_by_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_created_by_id_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[bim_file_id]" => :query,
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/created_by_id")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsAssigneeIdGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Creation Source Filter Options
  Returns a list of available creation source filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsCreatedFromGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_created_from_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsCreatedFromGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_created_from_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/created_from")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsCreatedFromGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Available Filters for Coordination Issues
  This endpoint returns filters that are available to filter Coordination Issues an array of objects

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.RestV10CoordinationIssuesFilterOptionsGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Location Filter Options
  Returns a list of available location filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[bim_file_id]"` (integer()): Filter item(s) with matching BIM File ids
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsLocationIdGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_location_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CoordinationIssuesFilterOptionsLocationIdGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_location_id_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[bim_file_id]" => :query,
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/location_id")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsLocationIdGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Status Filter Options
  Returns a list of available status filters that can be used to filter Coordination Issues

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[bim_file_id]"` (integer()): Filter item(s) with matching BIM File ids
    - `:locale` (String.t): The locale in which you need the link to your translation file.  Ensure it is one of the procore available locales.

  ### Returns

  - `{:ok, [%RestV10CoordinationIssuesFilterOptionsStatusGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_coordination_issues_filter_options_status_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [Procore.Model.RestV10CoordinationIssuesFilterOptionsStatusGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_coordination_issues_filter_options_status_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[bim_file_id]" => :query,
      :locale => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/coordination_issues/filter_options/status")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CoordinationIssuesFilterOptionsStatusGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
