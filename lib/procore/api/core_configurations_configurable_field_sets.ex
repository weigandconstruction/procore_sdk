# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreConfigurationsConfigurableFieldSets do
  @moduledoc """
  API calls for all endpoints tagged `CoreConfigurationsConfigurableFieldSets`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Find Configurable Field Set by Index
  Returns the details for a specified Configurable Field Set if found. If not, template of type Field Set will be returned with ID null.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `type` (String.t): The type of Configurable Field Set
  - `opts` (keyword): Optional parameters
    - `:project_id` (integer()): Project ID that is associated to the Configurable Field Set, if applicable
    - `:"scope[category]"` (integer()): Required for an Observations Configurable Field Set (0 = quality, 1 = safety, 2 = commissioning, 3 = warranty, 4 = work to complete)
    - `:"scope[inspection_type_id]"` (integer()): Required for an Inspection Configurable Field Set. If a value is provided, only field set of the specific Inspection type is returned. If no value is provided, only field set of unassociated Inspections (Inspections with no type) is returned.
    - `:"scope[generic_tool_id]"` (integer()): Required for a Generic Tool Item Configurable Field Set (type of ConfigurableFieldSet::GenericToolItem)
    - `:"scope[action_plan_type_id]"` (integer()): Required for an Action Plans Plan Configurable Field Set (type of ConfigurableFieldSet::ActionPlans::Plan)

  ### Returns

  - `{:ok, Procore.Model.ConfigurableFieldSet2.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_find_by_index_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ConfigurableFieldSet2.t()}
          | {:ok, Procore.Model.RestV10ProjectsIdFiltersGetDefaultResponse.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_find_by_index_get(
        connection,
        procore_company_id,
        company_id,
        type,
        opts \\ []
      ) do
    optional_params = %{
      :project_id => :query,
      :"scope[category]" => :query,
      :"scope[inspection_type_id]" => :query,
      :"scope[generic_tool_id]" => :query,
      :"scope[action_plan_type_id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/find_by_index")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :type, type)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet2},
      {400, Procore.Model.RestV10ProjectsIdFiltersGetDefaultResponse},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Configurable Field Sets
  Return a list of all Configurable Field Sets associated with a Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:include_lov_entries` (boolean()): whether or not to include LOV entries in the response (defaults to true)
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[type][]"` ([String.t]): Filter by field set type(s). Could be a string or an array of string.
    - `:"filters[generic_tool_id][]"` ([integer()]): Filter by generic tool id(s). Could be a integer or an array of integer.
    - `:view` (String.t): Specify which view to render. Options are extended, mobile, or with_project_ids

  ### Returns

  - `{:ok, [%ConfigurableFieldSet{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(Procore.Model.ConfigurableFieldSet.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :include_lov_entries => :query,
      :page => :query,
      :per_page => :query,
      :"filters[type][]" => :query,
      :"filters[generic_tool_id][]" => :query,
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Configurable Field Set
  Deletes a Configurable Field Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_delete(
        connection,
        procore_company_id,
        company_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Duplicate a Configurable Field Set and its custom fields
  Returns the newly duplicated configurable field set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `name` (String.t): Name for new fieldset
  - `opts` (keyword): Optional parameters
    - `:include_custom_fields` (boolean()): Boolean to dictate if the custom fields are duplicated

  ### Returns

  - `{:ok, Procore.Model.ConfigurableFieldSet.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_duplicate_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdDuplicatePost400Response.t()}
          | {:ok, Procore.Model.ConfigurableFieldSet.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_duplicate_post(
        connection,
        procore_company_id,
        company_id,
        id,
        name,
        opts \\ []
      ) do
    optional_params = %{
      :include_custom_fields => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}/duplicate")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :name, name)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet},
      {400,
       Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdDuplicatePost400Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Configurable Field Set
  Returns the details for a specified Configurable Field Set

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ConfigurableFieldSet2.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ConfigurableFieldSet2.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_get(
        connection,
        procore_company_id,
        company_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet2},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Configurable Field Set
  Updates a Configurable Field Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `rest_v10_companies_company_id_configurable_field_sets_id_patch_request` (RestV10CompaniesCompanyIdConfigurableFieldSetsIdPatchRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ConfigurableFieldSet2.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdPatchRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ConfigurableFieldSet2.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_patch(
        connection,
        procore_company_id,
        company_id,
        id,
        rest_v10_companies_company_id_configurable_field_sets_id_patch_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_companies_company_id_configurable_field_sets_id_patch_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet2},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Configurable Field Set Project options
  Returns projects available for the specified configurable field set

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:with_name` (String.t): Filter by project name, project number or display name which contains the given text.
    - `:starts_with` (String.t): Filter by project name, project number or display name starts with the given text.

  ### Returns

  - `{:ok, [%RestV10CompaniesCompanyIdConfigurableFieldSetsIdProjectOptionsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_project_options_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdProjectOptionsGet200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_project_options_get(
        connection,
        procore_company_id,
        company_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :with_name => :query,
      :starts_with => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}/project_options")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdProjectOptionsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Validate Custom Fields Values With Configurable Field Set
  Returns validation failure/success messages for values supplied to custom fields within the configurable field set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Configurable Field Set ID
  - `opts` (keyword): Optional parameters
    - `:project_id` (integer()): Project ID
    - `:body` (RestV10CompaniesCompanyIdConfigurableFieldSetsIdValidationsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdValidationsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_id_validations_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdValidationsPost200Response.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_id_validations_post(
        connection,
        procore_company_id,
        company_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :project_id => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets/#{id}/validations")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsIdValidationsPost200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Configurable Field Sets
  Creates a Configurable Field Set

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `rest_v10_companies_company_id_configurable_field_sets_post_request` (RestV10CompaniesCompanyIdConfigurableFieldSetsPostRequest): 
  - `opts` (keyword): Optional parameters
    - `:include_lov_entries` (boolean()): whether or not to include LOV entries in the response (defaults to true)

  ### Returns

  - `{:ok, Procore.Model.ConfigurableFieldSet2.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_configurable_field_sets_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10CompaniesCompanyIdConfigurableFieldSetsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ConfigurableFieldSet2.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_configurable_field_sets_post(
        connection,
        procore_company_id,
        company_id,
        rest_v10_companies_company_id_configurable_field_sets_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :include_lov_entries => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/configurable_field_sets")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v10_companies_company_id_configurable_field_sets_post_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.ConfigurableFieldSet2},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Project Configurable Field Sets
  Return a list of all Configurable Field Sets associated with a Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:include_lov_entries` (boolean()): whether or not to include LOV entries in the response (defaults to true)
    - `:types` ([String.t]): Filter by of configurable field set types
    - `:include_default_configurable_field_sets` (boolean()): Flag to include the default values for each type of Configurable Field Set if one has not been created.

  ### Returns

  - `{:ok, [%ConfigurableFieldSet{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_configurable_field_sets_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(Procore.Model.ConfigurableFieldSet.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_configurable_field_sets_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :include_lov_entries => :query,
      :types => :query,
      :include_default_configurable_field_sets => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/configurable_field_sets")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ConfigurableFieldSet},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Custom Fields User options
  Returns login informations that have access to the specified tool.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `tool_name` (String.t): Tool name identifier
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdRfisDefaultDistributionGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_custom_fields_tool_name_user_options_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10ProjectsProjectIdRfisDefaultDistributionGet200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_custom_fields_tool_name_user_options_get(
        connection,
        procore_company_id,
        project_id,
        tool_name,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/custom_fields/#{tool_name}/user_options")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdRfisDefaultDistributionGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end