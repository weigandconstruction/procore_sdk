# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementDrawingsDrawingAreas do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementDrawingsDrawingAreas`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List drawing areas
  Returns a list of all Drawing Areas in the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%DrawingArea1{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_drawing_areas_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.DrawingArea1.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_drawing_areas_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/drawing_areas")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.DrawingArea1},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create drawing area
  Create a new Drawing Area in the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `body94` (Body94): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_drawing_areas_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body94.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_drawing_areas_post(
        connection,
        procore_company_id,
        project_id,
        body94,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/drawing_areas")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body94)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List drawing areas
  Returns a list of all Drawing Areas in the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[id]"` ([integer()]): Filter by Drawing Areas ID To request specific drawing area ids add `filters[id]=[1,2,3]` to filters
    - `:view` (String.t): Specify response schema view

  ### Returns

  - `{:ok, [%DrawingArea{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_drawing_areas_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.DrawingArea.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_drawing_areas_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[id]" => :query,
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.1/projects/#{project_id}/drawing_areas")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.DrawingArea},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create drawing area
  Create a new Drawing Area in the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `body93` (Body93): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_drawing_areas_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body93.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_drawing_areas_post(
        connection,
        procore_company_id,
        project_id,
        body93,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.1/projects/#{project_id}/drawing_areas")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body93)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV11ProjectsProjectIdDrawingAreasPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
