# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.FieldProductivityBudgetedProductionQuantitiesBudgetedProductionQuantities do
  @moduledoc """
  API calls for all endpoints tagged `FieldProductivityBudgetedProductionQuantitiesBudgetedProductionQuantities`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List all Project Budgeted Production Quantities
  Return a list of all Budgeted Production Quantities with details for a specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           [
             Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t()
           ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[updated_at]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner}
    ])
  end

  @doc """
  Delete a Budgeted Production Quantity
  Deleting a Budgeted Production Quantity associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Id of the Budgeted Production Quantity
  - `budgeted_production_quantity_body` (BudgetedProductionQuantityBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.BudgetedProductionQuantityBody.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        budgeted_production_quantity_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, budgeted_production_quantity_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Show a Budgeted Production Quantity
  Show a Budgeted Production Quantity associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Id of the Budgeted Production Quantity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update a Budgeted Production Quantity
  Updating a Budgeted Production Quantity associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Id of the Budgeted Production Quantity
  - `budgeted_production_quantity_body` (BudgetedProductionQuantityBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.BudgetedProductionQuantityBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        budgeted_production_quantity_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, budgeted_production_quantity_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List all Project Budgeted Production Quantity IDs
  Return a list of all Budgeted Production Quantity IDs with details for a specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset

  ### Returns

  - `{:ok, [%Integer{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_ids_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, [integer()]} | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_ids_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[updated_at]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities/ids")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []}
    ])
  end

  @doc """
  Create a new Budgeted Production Quantity
  Create a new Budgeted Production Quantity associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `budgeted_production_quantity_body` (BudgetedProductionQuantityBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_budgeted_production_quantities_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.BudgetedProductionQuantityBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_budgeted_production_quantities_post(
        connection,
        procore_company_id,
        project_id,
        budgeted_production_quantity_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/budgeted_production_quantities")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, budgeted_production_quantity_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201,
       Procore.Model.RestV10ProjectsProjectIdBudgetedProductionQuantitiesGet200ResponseInner},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
