# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreTasksTaskItemProjectDistributionMembers do
  @moduledoc """
  API calls for all endpoints tagged `CoreTasksTaskItemProjectDistributionMembers`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Default Task Items Project Distribution Members
  Returns default distribution members for Task Items for the given project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_task_items_project_distribution_members_default_get(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_task_items_project_distribution_members_default_get(
        connection,
        procore_company_id,
        company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/task_items_project_distribution_members/default"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  List Task Items Distribution Member Options
  Returns options for distribution members that the current user can add to Task Items.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[search]"` (String.t): Returns item(s) matching the specified search query string.

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_task_items_project_distribution_members_options_get(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_task_items_project_distribution_members_options_get(
        connection,
        procore_company_id,
        company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[search]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/task_items_project_distribution_members/options"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdTaskItemsProjectDistributionMembersOptionsGet200Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end
end
