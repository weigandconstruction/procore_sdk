# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyActionPlansProjectActionPlanTemplateTestRecordRequests do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyActionPlansProjectActionPlanTemplateTestRecordRequests`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bulk Create Action Plan Template Test Record Requests
  Creates Multiple Project Action Plan Template Test Record Requests for selected Template item

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_bulk_create_post_request` (RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsBulkCreatePostRequest): 
  - `opts` (keyword): Optional parameters
    - `:completion_mode` (String.t): Whether to update what can be or nothing if one can not be updated. Defaults to \"all_or_nothing\"

  ### Returns

  - `{:ok, [%List{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_bulk_create_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsBulkCreatePostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               [
                 Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsBulkCreatePost200ResponseInnerInner.t()
               ]
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_bulk_create_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_bulk_create_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :completion_mode => :query
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/projects/#{project_id}/action_plans/plan_template_test_record_requests/bulk_create"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_bulk_create_post_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsBulkCreatePost200ResponseInnerInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Project Action Plan Template Test Record Requests
  List of all Project Action Plan Template Test Record Requests

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[plan_template_item_id]"` ([integer()]): Return item(s) associated with the specified Action Plan Template Item ID(s).
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[id]"` ([integer()]): Return item(s) with the specified IDs.
    - `:"filters[plan_template_id]"` ([integer()]): Return section(s) associated with the specified Action Plan Template ID(s).
    - `:"filters[type]"` ([String.t]): Return item(s) associated with the specified Record Type(s).
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:sort` (String.t): 

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_action_plans_plan_template_test_record_requests_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[plan_template_item_id]" => :query,
      :"filters[created_at]" => :query,
      :"filters[id]" => :query,
      :"filters[plan_template_id]" => :query,
      :"filters[type]" => :query,
      :"filters[updated_at]" => :query,
      :page => :query,
      :per_page => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/action_plans/plan_template_test_record_requests")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateTestRecordRequestsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
