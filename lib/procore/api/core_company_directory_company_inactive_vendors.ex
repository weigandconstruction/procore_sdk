# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreCompanyDirectoryCompanyInactiveVendors do
  @moduledoc """
  API calls for all endpoints tagged `CoreCompanyDirectoryCompanyInactiveVendors`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List company Inactive Vendors
  Return a list of all Inactive Vendors associated with a Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:view` (String.t): The compact view provides only the id and name. The extended view provides what is shown below. The normal view is the same as the extended view but excludes children_count, legal_name, parent, bidding, project_ids, standard_cost_codes, contract_signers_name, invoice_contacts_names, default_bid_invitees_names, and country_name. The ERP view is the same as the normal view but it includes origin_custom_fields. The default view is extended.
    - `:sort` (String.t): Return items with the specified sort

  ### Returns

  - `{:ok, [%RestV10CompaniesCompanyIdVendorsInactiveGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_vendors_inactive_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(Procore.Model.RestV10CompaniesCompanyIdVendorsInactiveGet200ResponseInner.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_vendors_inactive_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :view => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/vendors/inactive")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdVendorsInactiveGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Reactivate company vendor
  Reactivate a specified Company Vendor.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `id` (integer()): ID of the vendor
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): The compact view provides only the id and name. The extended view provides what is shown below. The normal view is the same as the extended view but excludes children_count, legal_name, parent, bidding, project_ids, standard_cost_codes, contract_signers_name, invoice_contacts_names, default_bid_invitees_names, and country_name. The ERP view is the same as the normal view but it includes origin_custom_fields. The default view is extended.

  ### Returns

  - `{:ok, Procore.Model.RestV10VendorsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_vendors_inactive_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10VendorsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_vendors_inactive_id_patch(
        connection,
        procore_company_id,
        company_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/companies/#{company_id}/vendors/inactive/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10VendorsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end