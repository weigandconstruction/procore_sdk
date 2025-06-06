# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsInspectionItemSignatureRequests do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsInspectionItemSignatureRequests`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Finds or Creates a Inspection Item Signature Request
  Tries to find a Inspection Item Signature Request for a specified Inspection, creates one if it doesn't exist.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `item_id` (String.t): Unique identifier for the inspection item.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_find_or_create_post(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_find_or_create_post(
        connection,
        procore_company_id,
        company_id,
        project_id,
        item_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/inspection_items/#{item_id}/signature_requests/find_or_create"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response},
      {201,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response},
      {400, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {422, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  Get a list of Inspection Item Signature Requests
  Get a list of Inspection Item Signature Requests for a specified Inspection.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `item_id` (String.t): Unique identifier for the inspection item.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[id]"` ([String.t]): Return Signature Request(s) with the specified IDs

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_get(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_get(
        connection,
        procore_company_id,
        company_id,
        project_id,
        item_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/inspection_items/#{item_id}/signature_requests"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsGet200Response},
      {400, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {422, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  Deletes an Inspection Item Signature Request
  Deletes the specified Inspection Item Signature Request

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `item_id` (String.t): Unique identifier for the inspection item.
  - `id` (String.t): Unique identifier of the Inspection Item Signature
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_id_delete(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_id_delete(
        connection,
        procore_company_id,
        company_id,
        project_id,
        item_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/inspection_items/#{item_id}/signature_requests/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {422, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  Show a Inspection Item Signature Request
  Show the specified Inspection Item Signature Request.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `item_id` (String.t): Unique identifier for the inspection item.
  - `id` (String.t): Unique identifier of the Inspection Item Signature
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_id_get(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_id_get(
        connection,
        procore_company_id,
        company_id,
        project_id,
        item_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/inspection_items/#{item_id}/signature_requests/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {404, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end

  @doc """
  Creates a Inspection Item Signature Request
  Creates a Inspection Item Signature Request for a specified Inspection.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (String.t): Unique identifier for the company.
  - `project_id` (String.t): Unique identifier for the project.
  - `item_id` (String.t): Unique identifier for the inspection item.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_post(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v20_companies_company_id_projects_project_id_inspection_items_item_id_signature_requests_post(
        connection,
        procore_company_id,
        company_id,
        project_id,
        item_id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v2.0/companies/#{company_id}/projects/#{project_id}/inspection_items/#{item_id}/signature_requests"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201,
       Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionItemsItemIdSignatureRequestsPost201Response},
      {400, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {401, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {403, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response},
      {422, Procore.Model.RestV20CompaniesCompanyIdWorkflowsToolsGet401Response}
    ])
  end
end
