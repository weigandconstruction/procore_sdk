# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.WorkforceManagementWorkforcePlanningWorkforcePlanningCustomFields do
  @moduledoc """
  API calls for all endpoints tagged `WorkforceManagementWorkforcePlanningWorkforcePlanningCustomFields`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Delete Custom Field
  Deletes a Custom Field from a company. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `field_id` (String.t): UUID of the Custom Field.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_delete(
        connection,
        procore_company_id,
        company_id,
        field_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields/#{field_id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Get Single Custom Field
  Retrieves a single Custom Field by its ID. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `field_id` (String.t): UUID of the Custom Field.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_get(
        connection,
        procore_company_id,
        company_id,
        field_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields/#{field_id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Update Custom Field
  Updates an existing Custom Field for a given company ID. The `type` property cannot be modified after creation. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `field_id` (String.t): UUID of the Custom Field.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_post(
        connection,
        procore_company_id,
        company_id,
        field_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields/#{field_id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Remove Values from Custom Field
  Removes specified values from a Custom Field with type `select` or `multi-select`. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `field_id` (String.t): UUID of the Custom Field.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdValuesDeleteRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_values_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_values_delete(
        connection,
        procore_company_id,
        company_id,
        field_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields/#{field_id}/values"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Add Values to Custom Field
  Appends new values to a Custom Field with type `select` or `multi-select`. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `field_id` (String.t): UUID of the Custom Field.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdValuesPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_values_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_field_id_values_post(
        connection,
        procore_company_id,
        company_id,
        field_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields/#{field_id}/values"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Get All Custom Fields
  Retrieves all Custom Fields within the specified company. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner.t()
             ]}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_get(
        connection,
        procore_company_id,
        company_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsGet200ResponseInner},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response}
    ])
  end

  @doc """
  Create Custom Field
  Creates a new Custom Field for a given company ID. Custom Fields are used to store additional information about Projects or People. 

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company. NOTE - this is a Laborchart company ID
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_workforce_planning_v2_companies_company_id_custom_fields_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost409Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_workforce_planning_v2_companies_company_id_custom_fields_post(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/workforce_planning/v2/companies/#{company_id}/custom-fields")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost200Response},
      {400,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet400Response},
      {401,
       Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdGroupsGroupIdReportsLookAheadGet401Response},
      {409, Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsPost409Response}
    ])
  end
end
