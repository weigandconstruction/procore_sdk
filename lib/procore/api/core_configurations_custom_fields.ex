# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreConfigurationsCustomFields do
  @moduledoc """
  API calls for all endpoints tagged `CoreConfigurationsCustomFields`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Custom Field Definition's Configurable Field Sets
  Return a list of all Configurable Field Sets for a given Custom Field Definition associated with the Current Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `custom_field_definition_id` (integer()): Custom Field Definition ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ConfigurableFieldSet2{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_custom_field_definitions_custom_field_definition_id_configurable_field_sets_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.ConfigurableFieldSet2.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_custom_field_definitions_custom_field_definition_id_configurable_field_sets_get(
        connection,
        procore_company_id,
        company_id,
        custom_field_definition_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/companies/#{company_id}/custom_field_definitions/#{custom_field_definition_id}/configurable_field_sets"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
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
  List Custom Field Lov Entries
  Return a list of all Custom Field Lov Entries associated with the Current Company and the Custom Field Definition passed by path param.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `custom_field_definition_id` (integer()): Unique identifier for the Custom Field Definition.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[start_with]"` (String.t): return lov entries that label start with letters
    - `:"filters[active]"` (boolean()): return lov entries that active status is (true or false)
    - `:"filters[label_with]"` (String.t): return lov entries that contains the label with the text
    - `:"filters[id]"` ([integer()]): return lov entries that are filtered on an array of ID's. Example: filters[id]=[1,2]

  ### Returns

  - `{:ok, Procore.Model.RestV10CustomFieldDefinitionsCustomFieldDefinitionIdCustomFieldLovEntriesGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_definitions_custom_field_definition_id_custom_field_lov_entries_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CustomFieldDefinitionsCustomFieldDefinitionIdCustomFieldLovEntriesGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_definitions_custom_field_definition_id_custom_field_lov_entries_get(
        connection,
        procore_company_id,
        company_id,
        custom_field_definition_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[start_with]" => :query,
      :"filters[active]" => :query,
      :"filters[label_with]" => :query,
      :"filters[id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/custom_field_definitions/#{custom_field_definition_id}/custom_field_lov_entries"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CustomFieldDefinitionsCustomFieldDefinitionIdCustomFieldLovEntriesGet200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Custom Field Lov Entry
  Returns the details for a specified Custom Field Lov Entry

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `custom_field_definition_id` (integer()): Unique identifier for the Custom Field Definition.
  - `id` (integer()): Unique identifier for the Custom Field List of Values (LOV) Entry.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.CustomFieldLovEntry.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_definitions_custom_field_definition_id_custom_field_lov_entries_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.CustomFieldLovEntry.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_definitions_custom_field_definition_id_custom_field_lov_entries_id_get(
        connection,
        procore_company_id,
        custom_field_definition_id,
        id,
        company_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/custom_field_definitions/#{custom_field_definition_id}/custom_field_lov_entries/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldLovEntry},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Custom Field Definitions
  DEPRECATED This endpoint has been deprecated, it will be sunset at 9/1/2024. Instead, please use rest/v1.1/companies/{company_id}/custom_field_definitions

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:view` (String.t): The extended view provides what is shown below. The default view returns the same as the extended view but excludes the attribute custom_field_lov_entries. The with_lov_entries view is the same as extended.
    - `:tool_name` (String.t): The name of the company/project level tool that is allowed read permissions to custom field definitions.
    - `:includes_configurable_field_sets_count` (boolean()): If true, response will include the number of field sets using item (custom field).
    - `:"filters[with_label]"` (String.t): Return custom field definitions that label contains text
    - `:"scope[type]"` (String.t): Return custom field definitions that contains fieldset type
    - `:"scope[category]"` (String.t): Return custom field definitions that contains category
    - `:"scope[inspection_type_id]"` (integer()): Return custom field definitions that contains inspection_type_id
    - `:"scope[generic_tool_id]"` (integer()): Return custom field definitions that contains generic_tool_id
    - `:"scope[action_plan_type_id]"` (integer()): Return custom field definitions that contains action_plan_type_id
    - `:sort` (String.t): Direction (asc/desc) can be controlled by the presence or absence of '-' before the sort parameter.

  ### Returns

  - `{:ok, Procore.Model.RestV10CustomFieldDefinitionsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_definitions_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10CustomFieldDefinitionsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_definitions_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :view => :query,
      :tool_name => :query,
      :includes_configurable_field_sets_count => :query,
      :"filters[with_label]" => :query,
      :"scope[type]" => :query,
      :"scope[category]" => :query,
      :"scope[inspection_type_id]" => :query,
      :"scope[generic_tool_id]" => :query,
      :"scope[action_plan_type_id]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_field_definitions")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CustomFieldDefinitionsGet200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Custom Field Definition
  Returns the details for a specified Custom Field Definition

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Custom Field Definition ID
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): The extended view provides what is shown below. The default view returns the same as the extended view but excludes the attribute custom_field_lov_entries. The with_lov_entries view is the same as extended.
    - `:includes_configurable_field_sets_count` (boolean()): If true, response will include the number of field sets using item (custom field).

  ### Returns

  - `{:ok, Procore.Model.CustomFieldDefinition1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_definitions_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.CustomFieldDefinition1.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_definitions_id_get(
        connection,
        procore_company_id,
        id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query,
      :includes_configurable_field_sets_count => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_field_definitions/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldDefinition1},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Custom Field Metadata
  Return a list of all Custom Field Metadata associated with the Current Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:view` (String.t): The extended view provides what is shown below. The default view returns the same as the extended view but excludes the attributes company_id, host_type, source_type, source_id, label, data_type. The with_lov_entries returns the default attributes but adding lov_entries.
    - `:"filters[field_set_type][]"` ([String.t]): Return a list of all Custom Field Metadata associated with the Current Company and source_type provided.
    - `:"filters[field_set_id][]"` ([integer()]): Return a list of all Custom Field Metadata associated with the Current Company and source_id provided.
    - `:"filters[custom_field_definitions_id]"` (integer()): Return a list of all Custom Field Metadata associated with the Current Company and custom_field_definition_id provided.

  ### Returns

  - `{:ok, [%CustomFieldMetadatum{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_metadata_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.CustomFieldMetadatum.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_metadata_get(connection, procore_company_id, company_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :view => :query,
      :"filters[field_set_type][]" => :query,
      :"filters[field_set_id][]" => :query,
      :"filters[custom_field_definitions_id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_field_metadata")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldMetadatum},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Custom Field Metadatum
  Returns the details for a specified Custom Field Metadatum

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Custom Field Metadatum ID
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): The extended view provides what is shown below. The default view returns the same as the extended view but excludes the attributes company_id, host_type, source_type, source_id, label, data_type. The with_lov_entries returns the default attributes but adding lov_entries.

  ### Returns

  - `{:ok, Procore.Model.CustomFieldMetadatum.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_field_metadata_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.CustomFieldMetadatum.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_field_metadata_id_get(
        connection,
        procore_company_id,
        id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_field_metadata/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldMetadatum},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Custom Field Sections
  Return a list of all Custom Field Sections associated with the Current Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%CustomFieldsSection{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_fields_sections_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.CustomFieldsSection.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_fields_sections_get(connection, procore_company_id, company_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_fields_sections")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldsSection},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Custom Fields Section
  Returns the details for a specified Custom Field Section

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Custom Fields Section ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.CustomFieldsSection.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_custom_fields_sections_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.CustomFieldsSection.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_custom_fields_sections_id_get(
        connection,
        procore_company_id,
        company_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/custom_fields_sections/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldsSection},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Custom Field Definitions
  Return a list of Custom Field Definitions for a given company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Items per page, default: 100, max: 100
    - `:tool_name` (String.t): The name of the company/project level tool that is allowed read permissions to custom field definitions.
    - `:includes_configurable_field_sets_count` (boolean()): If true, response will include the number of field sets using item (custom field).
    - `:"filters[with_label]"` (String.t): Return custom field definitions that label contains text
    - `:"filters[id]"` ([integer()]): return custom field definitions that are filtered on an array of ID's. Example: filters[id]=[1,2]
    - `:sort` (String.t): Direction (asc/desc) can be controlled by the presence or absence of '-' before the sort parameter.

  ### Returns

  - `{:ok, [%CustomFieldDefinition{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_companies_company_id_custom_field_definitions_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.CustomFieldDefinition.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v11_companies_company_id_custom_field_definitions_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :tool_name => :query,
      :includes_configurable_field_sets_count => :query,
      :"filters[with_label]" => :query,
      :"filters[id]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.1/companies/#{company_id}/custom_field_definitions")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CustomFieldDefinition},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
