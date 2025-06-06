# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsItemResponseSetResponses do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsItemResponseSetResponses`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Responses in the Specified Item Response Set
  List Responses for an Item Response Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `response_set_id` (integer()): The ID of the Response Set
  - `opts` (keyword): Optional parameters
    - `:"filters[corresponding_status]"` ([String.t]): Array of Corresponding Statuses. Return item(s) with the specified Corresponding Statuses - 'yes', 'no', or 'n/a'.
    - `:sort` (String.t): 

  ### Returns

  - `{:ok, [%ChecklistResponse{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.ChecklistResponse.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_get(
        connection,
        procore_company_id,
        company_id,
        response_set_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[corresponding_status]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/companies/#{company_id}/checklist/item/response_sets/#{response_set_id}/responses"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistResponse},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Remove a Response from an Item Response Set
  Remove a Response from an Item Response Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `response_set_id` (integer()): Checklist Item Response Set ID
  - `id` (integer()): The ID of the Response
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_delete(
        connection,
        procore_company_id,
        company_id,
        response_set_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/companies/#{company_id}/checklist/item/response_sets/#{response_set_id}/responses/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {409, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Item Response Set Response
  Returns a specified Response from the Item Response Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `response_set_id` (integer()): Checklist Item Response Set ID
  - `id` (integer()): The ID of the Response
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ChecklistResponse.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_get(
        connection,
        procore_company_id,
        company_id,
        response_set_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/companies/#{company_id}/checklist/item/response_sets/#{response_set_id}/responses/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistResponse},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Add an existing Response to an Item Response Set
  Adds an existing Response to the specified Item Response Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `response_set_id` (integer()): Checklist Item Response Set ID
  - `id` (integer()): The ID of the Response
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ChecklistResponse.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_id_patch(
        connection,
        procore_company_id,
        company_id,
        response_set_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/rest/v1.0/companies/#{company_id}/checklist/item/response_sets/#{response_set_id}/responses/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistResponse},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {409, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create a Response in the Specified Item Response Set
  Creates a Response for a specified Item Response Set.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `response_set_id` (integer()): The ID of the Response Set
  - `checklist_response_body2` (ChecklistResponseBody2): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.ChecklistResponseBody2.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ChecklistResponse.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_item_response_sets_response_set_id_responses_post(
        connection,
        procore_company_id,
        company_id,
        response_set_id,
        checklist_response_body2,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/companies/#{company_id}/checklist/item/response_sets/#{response_set_id}/responses"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, checklist_response_body2)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.ChecklistResponse},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
