# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyActionPlansProjectActionPlanTemplateItemAssignees do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyActionPlansProjectActionPlanTemplateItemAssignees`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bulk Create Action Plan Template Item Assignees
  Creates multiple Action Plan Template Assignees

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_create_post_request` (RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkCreatePostRequest): 
  - `opts` (keyword): Optional parameters
    - `:completion_mode` (String.t): Whether to update what can be or nothing if one can not be updated. Defaults to \"all_or_nothing\"

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkCreatePost200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_create_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkCreatePostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkCreatePost200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_create_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_create_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :completion_mode => :query
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/projects/#{project_id}/action_plans/plan_template_item_assignees/bulk_create"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_create_post_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkCreatePost200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Bulk update Action Plan Template Item Assignees
  Update multiple Action Plan Template Assignees

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_update_patch_request` (RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkUpdatePatchRequest): 
  - `opts` (keyword): Optional parameters
    - `:completion_mode` (String.t): Whether to update what can be or nothing if one can not be updated. Defaults to \"all_or_nothing\"

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkUpdatePatch200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_update_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkUpdatePatchRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkUpdatePatch200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_update_patch(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_update_patch_request,
        opts \\ []
      ) do
    optional_params = %{
      :completion_mode => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url(
        "/rest/v1.0/projects/#{project_id}/action_plans/plan_template_item_assignees/bulk_update"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_action_plans_plan_template_item_assignees_bulk_update_patch_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesBulkUpdatePatch200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Action Plan Template Item Assignees
  List of all Action Plan Template Item Assignees

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[plan_template_item_id]"` ([integer()]): Return item(s) associated with the specified Action Plan Template Item ID(s).
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[id]"` ([integer()]): Return item(s) with the specified IDs.
    - `:"filters[plan_template_id]"` ([integer()]): Return section(s) associated with the specified Action Plan Template ID(s).
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:sort` (String.t): Direction (asc/desc) can be controlled by the presence or absence of '-' before the sort parameter.

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_action_plans_plan_template_item_assignees_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesGet200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_action_plans_plan_template_item_assignees_get(
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
      :"filters[updated_at]" => :query,
      :page => :query,
      :per_page => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/action_plans/plan_template_item_assignees")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemAssigneesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end