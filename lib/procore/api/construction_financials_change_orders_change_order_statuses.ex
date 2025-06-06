# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ConstructionFinancialsChangeOrdersChangeOrderStatuses do
  @moduledoc """
  API calls for all endpoints tagged `ConstructionFinancialsChangeOrdersChangeOrderStatuses`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Change Order Statuses
  Return a list of all Change Order Statuses.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ChangeOrderStatusesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_change_order_statuses_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.RestV10ChangeOrderStatusesGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_change_order_statuses_get(connection, procore_company_id, company_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/change_order/statuses")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :company_id, company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ChangeOrderStatusesGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
