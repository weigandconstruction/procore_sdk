# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ConstructionFinancialsCommitmentsPurchaseOrderContractLineItems do
  @moduledoc """
  API calls for all endpoints tagged `ConstructionFinancialsCommitmentsPurchaseOrderContractLineItems`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Purchase Order Contract Line Items
  Return a list of all Purchase Order Contract Line Items.  Change Event Line Item information is only returned if a line item is associated to a change event line item and user can view change events.  See [Filtering on List Actions](https://developers.procore.com/documentation/filtering-on-list-actions) for information on using the filtering capabilities provided by this endpoint.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[id]"` ([integer()]): Return item(s) with the specified IDs.
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[cost_code_id]"` (String.t): Cost Code ID. Returns item(s) with the specified Cost Code ID or within the specified range of Cost Code IDs.
    - `:"filters[line_item_type_id]"` (integer()): Line Item Type ID. Returns item(s) with the specified Line Item Type ID or range of Line Item Type IDs.
    - `:view` (String.t): Specifies which view (which attributes) of the resource is going to be present in the response. 'default' view will be rendered by default if the parameter is not provided. For the 'ssov_source_lines' view lower permissions are acceptable. It's enough to be added to invoice contacts and contract accessors even if SOV line items are hidden from non-admins. 

  ### Returns

  - `{:ok, [%RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(
               Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner.t()
             )}
          | {:error, Tesla.Env.t()}
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_get(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[id]" => :query,
      :"filters[created_at]" => :query,
      :"filters[updated_at]" => :query,
      :"filters[cost_code_id]" => :query,
      :"filters[line_item_type_id]" => :query,
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Purchase Order Contract Line Item
  Delete a Purchase Order Contract Line Item.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `id` (integer()): ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_delete(
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
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_delete(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Purchase Order Contract Line Item
  Return a Purchase Order Contract Line Item.  Change Event Line Item information is only returned if a line item is associated to a change event line item and user can view change events.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `id` (integer()): ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): Specifies which view (which attributes) of the resource is going to be present in the response. 'default' view will be rendered by default if the parameter is not provided. For the 'ssov_source_lines' view lower permissions are acceptable. It's enough to be added to invoice contacts and contract accessors even if SOV line items are hidden from non-admins. 

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_get(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Purchase Order Contract Line Item
  Update a Purchase Order Contract Line Item. Note: A budget line item will automatically be created for Non-budgeted line items for all new projects and for projects enabled with Non-Budgeted line item beta functionality

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `id` (integer()): ID
  - `body3` (Body3): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.Default.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body3.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.Default.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_id_patch(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        id,
        body3,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body3)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.Default},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Purchase Order Contract Line Item
  Create a Purchase Order Contract Line Item. Note: A budget line item will automatically be created for Non-budgeted line items for all new projects and for projects enabled with Non-Budgeted line item beta functionality

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `body3` (Body3): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.Default.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body3.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.Default.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_post(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        body3,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body3)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.Default},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Sync Purchase Order Contract Line Items
  Sync Purchase Order Contract Line Items. Note: A budget line item will automatically be created for Non-budgeted line items for all new projects and for projects enabled with Non-Budgeted line item beta functionality

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `purchase_order_contract_id` (integer()): Purchase Order Contract ID
  - `project_id` (integer()): Unique identifier for the project.
  - `line_item_sync_body` (LineItemSyncBody): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_sync_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.LineItemSyncBody.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_purchase_order_contracts_purchase_order_contract_id_line_items_sync_patch(
        connection,
        procore_company_id,
        purchase_order_contract_id,
        project_id,
        line_item_sync_body,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/purchase_order_contracts/#{purchase_order_contract_id}/line_items/sync")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:body, :body, line_item_sync_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {413, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end