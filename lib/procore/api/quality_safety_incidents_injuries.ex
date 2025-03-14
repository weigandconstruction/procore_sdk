# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyIncidentsInjuries do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyIncidentsInjuries`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Injuries
  Returns a list of Injuries for a given project.  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID. When provided, the list will be scoped to only the Injuries for a given Incident.
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[affected_company_id]"` ([integer()]): Array of Company IDs. Returns item(s) with the specified affected Company IDs.
    - `:"filters[affected_party_id]"` ([integer()]): Array of Affected Party IDs. Returns item(s) with the specified Affected Party IDs.
    - `:"filters[affected_person_id]"` ([integer()]): Array of Person IDs. Returns item(s) with the specified affected Person IDs.
    - `:"filters[harm_source_id]"` ([integer()]): Array of Harm Source IDs. Returns item(s) with the specified Harm Source IDs.
    - `:"filters[work_activity_id]"` ([integer()]): Array of Work Activity IDs. Returns item(s) with the specified Work Activity IDs.
    - `:"filters[managed_equipment_id]"` (integer()): Return item(s) with the specified Managed Equipment ID.
    - `:"filters[recordable]"` (boolean()): Return item(s) that are recordable.
    - `:"filters[affected_body_part]"` ([String.t]): Return item(s) with any of the specified Affected Body Parts.
    - `:"filters[affliction_type_id]"` (integer()): Return item(s) with the specified Affliction Type IDs
    - `:"filters[body_part_id]"` ([integer()]): Return item(s) with the specified Body Part IDs
    - `:"filters[filing_type]"` ([String.t]): Return item(s) with the specified filing types. The `recordable` filing_type filter value is deprecated.
    - `:"filters[query]"` (String.t): Return item(s) containing query
    - `:sort` (String.t): 

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query,
      :page => :query,
      :per_page => :query,
      :"filters[created_at]" => :query,
      :"filters[affected_company_id]" => :query,
      :"filters[affected_party_id]" => :query,
      :"filters[affected_person_id]" => :query,
      :"filters[harm_source_id]" => :query,
      :"filters[work_activity_id]" => :query,
      :"filters[managed_equipment_id]" => :query,
      :"filters[recordable]" => :query,
      :"filters[affected_body_part]" => :query,
      :"filters[affliction_type_id]" => :query,
      :"filters[body_part_id]" => :query,
      :"filters[filing_type]" => :query,
      :"filters[query]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Destroy Injury
  Sends Injury to the recycle bin

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Injury ID
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Injury
  Returns a specific Injury  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Injury ID
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Injury
  Update an Injury's attributes  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Injury ID
  - `rest_v10_projects_project_id_incidents_injuries_id_patch_request` (RestV10ProjectsProjectIdIncidentsInjuriesIdPatchRequest): 
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID
    - `:run_configurable_validations` (boolean()): Whether or not Configurable validations from the Injury Configurable Field Set should be run (default: false). See (https://developers.procore.com/reference/configurable-field-sets#list-project-configurable-field-sets) for a list of Configurable validations enabled on this project.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesIdPatchRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v10_projects_project_id_incidents_injuries_id_patch_request,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query,
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, rest_v10_projects_project_id_incidents_injuries_id_patch_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Injury
  Creates an Injury record.  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_incidents_injuries_post_request` (RestV10ProjectsProjectIdIncidentsInjuriesPostRequest): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): Whether or not Configurable validations from the Injury Configurable Field Set should be run (default: false). See (https://developers.procore.com/reference/configurable-field-sets#list-project-configurable-field-sets) for a list of Configurable validations enabled on this project.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_incidents_injuries_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_incidents_injuries_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_incidents_injuries_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/incidents/injuries")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, rest_v10_projects_project_id_incidents_injuries_post_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Recycled Injuries
  Returns a list of Recycled Injuries for a given project (or Incident, if incident_id is present).  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID. When provided, the list will be scoped to only the Recycled Injuries for a given Incident.  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[affected_company_id]"` ([integer()]): Array of Company IDs. Returns item(s) with the specified affected Company IDs.
    - `:"filters[affected_party_id]"` ([integer()]): Array of Affected Party IDs. Returns item(s) with the specified Affected Party IDs.
    - `:"filters[affected_person_id]"` ([integer()]): Array of Person IDs. Returns item(s) with the specified affected Person IDs.
    - `:"filters[harm_source_id]"` ([integer()]): Array of Harm Source IDs. Returns item(s) with the specified Harm Source IDs.
    - `:"filters[work_activity_id]"` ([integer()]): Array of Work Activity IDs. Returns item(s) with the specified Work Activity IDs.
    - `:"filters[managed_equipment_id]"` (integer()): Return item(s) with the specified Managed Equipment ID.
    - `:"filters[recordable]"` (boolean()): Return item(s) that are recordable.
    - `:"filters[affected_body_part]"` ([String.t]): Return item(s) with any of the specified Affected Body Parts.
    - `:"filters[affliction_type_id]"` ([integer()]): Return item(s) with the specified Affliction Type IDs
    - `:"filters[filing_type]"` ([String.t]): Return item(s) with the specified filing types. The `recordable` filing_type filter value is deprecated.
    - `:"filters[query]"` (String.t): Return item(s) containing query
    - `:sort` (String.t): 
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_recycle_bin_incidents_injuries_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_recycle_bin_incidents_injuries_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query,
      :"filters[created_at]" => :query,
      :"filters[affected_company_id]" => :query,
      :"filters[affected_party_id]" => :query,
      :"filters[affected_person_id]" => :query,
      :"filters[harm_source_id]" => :query,
      :"filters[work_activity_id]" => :query,
      :"filters[managed_equipment_id]" => :query,
      :"filters[recordable]" => :query,
      :"filters[affected_body_part]" => :query,
      :"filters[affliction_type_id]" => :query,
      :"filters[filing_type]" => :query,
      :"filters[query]" => :query,
      :sort => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/recycle_bin/incidents/injuries")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Recycled Injury
  Returns a specific Recycled Injury  NOTE: The afflictions and affected_body_part keys are deprecated. Please disregard and use the affected_body_parts and affliction_type keys as documented below.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Injury ID
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_recycle_bin_incidents_injuries_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_recycle_bin_incidents_injuries_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/recycle_bin/incidents/injuries/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdIncidentsInjuriesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Retrieve Recycled Injury
  Retrieves a specific Injury from the recycle bin

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Injury ID
  - `opts` (keyword): Optional parameters
    - `:incident_id` (integer()): Incident ID

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_recycle_bin_incidents_injuries_id_restore_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_recycle_bin_incidents_injuries_id_restore_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :incident_id => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/recycle_bin/incidents/injuries/#{id}/restore")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
