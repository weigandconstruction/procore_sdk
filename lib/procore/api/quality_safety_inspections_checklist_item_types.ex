# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsChecklistItemTypes do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsChecklistItemTypes`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Available Checklist Item Types
  Lists available Checklist Item Types  NOTE: Though both query parameters are marked as required below, only one of the two needs to be passed in (i.e., if you pass in a project_id then you do not need to also pass in a company_id, and vice versa).

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%ChecklistItemType{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_checklist_item_types_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.ChecklistItemType.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_checklist_item_types_get(
        connection,
        procore_company_id,
        project_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/checklist/item_types")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistItemType},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Checklist Item Type
  Retrieves specific Checklist Item Type  NOTE: Though both query parameters are marked as required below, only one of the two needs to be passed in (i.e., if you pass in a project_id then you do not need to also pass in a company_id, and vice versa).

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): Item Type ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistItemType.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_checklist_item_types_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.ChecklistItemType.t()}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_checklist_item_types_id_get(
        connection,
        procore_company_id,
        project_id,
        company_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/checklist/item_types/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:query, :company_id, company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.ChecklistItemType},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
