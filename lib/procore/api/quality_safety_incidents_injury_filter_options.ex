# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyIncidentsInjuryFilterOptions do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyIncidentsInjuryFilterOptions`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Get Affected Body Part Filter Options
  Returns affected body parts in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_affected_body_parts_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_affected_body_parts_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/affected_body_parts"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Affected Company Filter Options
  Returns affected companies in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_affected_companies_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_affected_companies_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/affected_companies"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Affected Parties Filter Options
  Returns affected parties in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_affected_parties_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_affected_parties_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/affected_parties"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Affected Persons Filter Options
  Returns affected persons in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_affected_persons_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_affected_persons_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/affected_persons"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Affliction Type Filter Options
  Returns affliction types in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_affliction_types_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_affliction_types_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/affliction_types"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Filing Type Filter Options
  Returns filing types in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_filing_types_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_filing_types_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/filing_types")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesFilterOptionsAffectedBodyPartsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Harm Source Filter Options
  Returns harm sources in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_harm_sources_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_harm_sources_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/harm_sources")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Managed Equipment Filter Options
  Returns managed equipment in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_managed_equipment_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_managed_equipment_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/managed_equipment"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Get Work Activity Filter Options
  Returns work activities in use for filtering injuries

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_filter_options_work_activities_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_filter_options_work_activities_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/incidents/injuries/filter_options/work_activities"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdIncidentsPropertyDamagesFilterOptionsAffectedCompaniesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
