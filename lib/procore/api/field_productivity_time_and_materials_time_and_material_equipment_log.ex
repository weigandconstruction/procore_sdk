# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.FieldProductivityTimeAndMaterialsTimeAndMaterialEquipmentLog do
  @moduledoc """
  API calls for all endpoints tagged `FieldProductivityTimeAndMaterialsTimeAndMaterialEquipmentLog`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bulk Create Time and material equipment logs
  Bulk create Time and material equipment logs with one request.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `time_and_material_equipment_log_bulk_create_body` (TimeAndMaterialEquipmentLogBulkCreateBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_create_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.TimeAndMaterialEquipmentLogBulkCreateBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_create_post(
        connection,
        procore_company_id,
        project_id,
        time_and_material_equipment_log_bulk_create_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/bulk_create")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, time_and_material_equipment_log_bulk_create_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Bulk Delete Time and material equipment logs
  Bulk delete Time and material equipment logs with one request.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `time_and_material_equipment_log_bulk_destroy_body` (TimeAndMaterialEquipmentLogBulkDestroyBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_destroy_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.TimeAndMaterialEquipmentLogBulkDestroyBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_destroy_delete(
        connection,
        procore_company_id,
        project_id,
        time_and_material_equipment_log_bulk_destroy_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/bulk_destroy")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, time_and_material_equipment_log_bulk_destroy_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Bulk Update Time and Material Equipment logs
  Bulk update Time and Material Equipment logs with one request.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `time_and_material_equipment_log_bulk_update_body` (TimeAndMaterialEquipmentLogBulkUpdateBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_update_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.TimeAndMaterialEquipmentLogBulkUpdateBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_bulk_update_patch(
        connection,
        procore_company_id,
        project_id,
        time_and_material_equipment_log_bulk_update_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/bulk_update")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, time_and_material_equipment_log_bulk_update_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List of all Time and Material Equipment Logs
  List of all Time and Material Equipment Logs

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_get(
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
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete a Time And Material Equipment Log
  Deleting a Time And Material Equipment Log

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Id of the Time And Material Equipment Log
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Time And Material Equipment Log
  Return Time And Material Equipment Log detailed information.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update a Time And Material Equipment Log
  Updating a Time And Material Equipment Log

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Id of the Time And Material Equipment Log
  - `time_and_material_equipment_log` (TimeAndMaterialEquipmentLog): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.TimeAndMaterialEquipmentLog.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        time_and_material_equipment_log,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, time_and_material_equipment_log)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create a new Time And Material Equipment Log
  Create a new Time And Material Equipment log

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `time_and_material_equipment_log` (TimeAndMaterialEquipmentLog): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_time_and_material_equipment_logs_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.TimeAndMaterialEquipmentLog.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_time_and_material_equipment_logs_post(
        connection,
        procore_company_id,
        project_id,
        time_and_material_equipment_log,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/time_and_material_equipment_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, time_and_material_equipment_log)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201,
       Procore.Model.RestV10ProjectsProjectIdTimeAndMaterialEquipmentLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
