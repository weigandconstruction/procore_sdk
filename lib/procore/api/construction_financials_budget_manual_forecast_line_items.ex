# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ConstructionFinancialsBudgetManualForecastLineItems do
  @moduledoc """
  API calls for all endpoints tagged `ConstructionFinancialsBudgetManualForecastLineItems`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Manual Forecast Line Items
  Returns a list of Manual Forecast Line Items on a given project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdManualForecastLineItemsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_manual_forecast_line_items_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_manual_forecast_line_items_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/manual_forecast_line_items")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete A Manual Forecast Line Item
  Delete a manual forecast line item for a budget line item

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Unique identifier for the manual forecast line item.
  - `rest_v10_projects_project_id_manual_forecast_line_items_id_delete_request` (RestV10ProjectsProjectIdManualForecastLineItemsIdDeleteRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_manual_forecast_line_items_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsIdDeleteRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_manual_forecast_line_items_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v10_projects_project_id_manual_forecast_line_items_id_delete_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/manual_forecast_line_items/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_manual_forecast_line_items_id_delete_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update A Manual Forecast Line Item
  Update a manual forecast line item for a budget line item

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Unique identifier for the manual forecast line item.
  - `rest_v10_projects_project_id_manual_forecast_line_items_post_request` (RestV10ProjectsProjectIdManualForecastLineItemsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_manual_forecast_line_items_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_manual_forecast_line_items_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v10_projects_project_id_manual_forecast_line_items_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/manual_forecast_line_items/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_manual_forecast_line_items_post_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create A Manual Forecast Line Item
  Create a manual forecast line item for a budget line item

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_manual_forecast_line_items_post_request` (RestV10ProjectsProjectIdManualForecastLineItemsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_manual_forecast_line_items_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_manual_forecast_line_items_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_manual_forecast_line_items_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/manual_forecast_line_items")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_projects_project_id_manual_forecast_line_items_post_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10ProjectsProjectIdManualForecastLineItemsPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
