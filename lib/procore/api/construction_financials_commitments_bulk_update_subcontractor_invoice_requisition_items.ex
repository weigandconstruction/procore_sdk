# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ConstructionFinancialsCommitmentsBulkUpdateSubcontractorInvoiceRequisitionItems do
  @moduledoc """
  API calls for all endpoints tagged `ConstructionFinancialsCommitmentsBulkUpdateSubcontractorInvoiceRequisitionItems`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bulk Update Subcontractor Invoice (Requisitions) Items
  Updates all requisition items received in the body. Can be contract items, contract detail items, or change order items.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `requisition_id` (integer()): Requisition ID
  - `project_id` (integer()): Unique identifier for the project.
  - `body109` (Body109): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_requisitions_requisition_id_bulk_item_update_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body109.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdSubcontractorScheduleOfValuesStatusPatch404Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_requisitions_requisition_id_bulk_item_update_patch(
        connection,
        procore_company_id,
        requisition_id,
        project_id,
        body109,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/requisitions/#{requisition_id}/bulk_item_update")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:body, :body, body109)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404,
       Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdSubcontractorScheduleOfValuesStatusPatch404Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end