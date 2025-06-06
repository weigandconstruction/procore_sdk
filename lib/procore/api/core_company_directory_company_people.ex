# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreCompanyDirectoryCompanyPeople do
  @moduledoc """
  API calls for all endpoints tagged `CoreCompanyDirectoryCompanyPeople`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bulk activation
  Activate up to 1000 people at once

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `bulk_activate_body` (BulkActivateBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkActivatePost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_bulk_activate_post(
          Tesla.Env.client(),
          integer(),
          String.t(),
          Procore.Model.BulkActivateBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkActivatePost200Response.t()}
          | {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_bulk_activate_post(
        connection,
        procore_company_id,
        company_id,
        bulk_activate_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/people/bulk_activate")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, bulk_activate_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkActivatePost200Response},
      {400, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  Bulk deactivation
  Deactivate up to 1000 people at once

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `bulk_deactivate_body` (BulkDeactivateBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkDeactivatePost200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_bulk_deactivate_post(
          Tesla.Env.client(),
          integer(),
          String.t(),
          Procore.Model.BulkDeactivateBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkDeactivatePost200Response.t()}
          | {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_bulk_deactivate_post(
        connection,
        procore_company_id,
        company_id,
        bulk_deactivate_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/people/bulk_deactivate")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, bulk_deactivate_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdPeopleBulkDeactivatePost200Response},
      {400, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  List Company People
  Return a list of People associated with a Company. Includes users in the directory and reference users.  See [Filtering on List Actions](https://developers.procore.com/documentation/filtering-on-list-actions) for information on using the filtering capabilities provided by this endpoint.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): ID of the company
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[is_employee]"` (boolean()): If true, returns item(s) where `is_employee` value is true.
    - `:"filters[without_reference_users]"` (boolean()): If true, returns only people who are not reference users.
    - `:"filters[reference_users_only]"` (boolean()): If true, returns only people who are reference users.
    - `:"filters[include_company_people]"` (boolean()): If true, returns people in the Company not just the Project. This option only works if the user has permission to create people in the project directory or permission to read from the company directory.
    - `:"filters[search]"` (String.t): Returns item(s) matching the specified search query string.
    - `:"filters[connected]"` (boolean()): If true, returns only people who are connected users. If false, returns only people who are not connected users.
    - `:"filters[state_code]"` (String.t): Returns only people who have the specified state code.
    - `:"filters[job_title]"` (String.t): Returns only people who have the specified job title.
    - `:"filters[vendor_id]"` ([integer()]): Return item(s) with the specified Vendor IDs.
    - `:"filters[trade_id]"` ([integer()]): Array of Trade IDs. Returns item(s) with the specified Trade IDs.

  ### Returns

  - `{:ok, [%CompanyPerson{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.CompanyPerson.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[is_employee]" => :query,
      :"filters[without_reference_users]" => :query,
      :"filters[reference_users_only]" => :query,
      :"filters[include_company_people]" => :query,
      :"filters[search]" => :query,
      :"filters[connected]" => :query,
      :"filters[state_code]" => :query,
      :"filters[job_title]" => :query,
      :"filters[vendor_id]" => :query,
      :"filters[trade_id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/people")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CompanyPerson},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update company person
  Update the specified Company Person.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): ID of the company
  - `id` (integer()): ID of the person
  - `company_person_body` (CompanyPersonBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.CompanyPerson.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.CompanyPersonBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.CompanyPerson.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_id_patch(
        connection,
        procore_company_id,
        company_id,
        id,
        company_person_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/companies/#{company_id}/people/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, company_person_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CompanyPerson},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Company Person
  Create a new Company Person.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): ID of the company
  - `company_person_body` (CompanyPersonBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.CompanyPerson.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.CompanyPersonBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.CompanyPerson.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_post(
        connection,
        procore_company_id,
        company_id,
        company_person_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/companies/#{company_id}/people")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, company_person_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.CompanyPerson},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
