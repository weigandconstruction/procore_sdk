# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementProjectScheduleToDos do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementProjectScheduleToDos`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Delete todo
  Delete a specific ToDo Item in a specified Project.  This endpoint has been deprecated. Instead, use [/rest/v1/calendar-items)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the todo
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_todos_id_delete(Tesla.Env.client(), integer(), integer(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_todos_id_delete(connection, procore_company_id, id, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/todos/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show todo
  Return detailed information about a ToDo Item in a specified Project.  This endpoint has been deprecated. Instead, use [/rest/v1/calendar-items)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the todo
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ToDo1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_todos_id_get(Tesla.Env.client(), integer(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ToDo1.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_todos_id_get(connection, procore_company_id, id, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/todos/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ToDo1},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update todo
  Update a ToDo item for a specified Project.  This endpoint has been deprecated. Instead, use [/rest/v1/calendar-items)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the todo
  - `body11` (Body11): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ToDo1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_todos_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body11.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ToDo1.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_todos_id_patch(connection, procore_company_id, id, body11, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/todos/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body11)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ToDo1},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create todo
  Create a ToDo Item for a specified Project.  This endpoint has been deprecated. Instead, use [/rest/v1/calendar-items)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `body10` (Body10): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ToDo1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_todos_post(Tesla.Env.client(), integer(), Procore.Model.Body10.t(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ToDo1.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_todos_post(connection, procore_company_id, body10, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/todos")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body10)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.ToDo1},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Sync ToDos
  This endpoint creates or updates a batch of ToDos.  This endpoint has been deprecated. Instead, use [/rest/v1/calendar-items)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_todos_sync_patch_request` (RestV10TodosSyncPatchRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ArrayOfTodos.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_todos_sync_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10TodosSyncPatchRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ArrayOfTodos.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_todos_sync_patch(
        connection,
        procore_company_id,
        project_id,
        rest_v10_todos_sync_patch_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/todos/sync")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:body, :body, rest_v10_todos_sync_patch_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ArrayOfTodos},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
