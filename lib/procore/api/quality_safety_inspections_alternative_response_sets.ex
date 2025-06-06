# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsAlternativeResponseSets do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsAlternativeResponseSets`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Alternative Response Sets
  Lists Alternative Response Sets for a specified Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ChecklistAlternativeResponseSetFull{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_alternative_response_sets_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.ChecklistAlternativeResponseSetFull.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_alternative_response_sets_get(
        connection,
        procore_company_id,
        company_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/checklist/alternative_response_sets")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistAlternativeResponseSetFull},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Alternative Response Set
  Returns a specified Alternative Response Set. The set includes alternative terms to represent conforming and deficient item responses, e.g. \"Safe\" instead of \"Pass\" for an item with an internal status of \"yes\". The global attribute indicates whether a response set has been provided by Procore.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): Alternative Response Set ID
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistAlternativeResponseSetFull.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_checklist_alternative_response_sets_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ChecklistAlternativeResponseSetFull.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_checklist_alternative_response_sets_id_get(
        connection,
        procore_company_id,
        id,
        company_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/checklist/alternative_response_sets/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistAlternativeResponseSetFull},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
