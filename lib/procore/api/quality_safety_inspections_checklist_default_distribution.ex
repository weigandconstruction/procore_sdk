# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsChecklistDefaultDistribution do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsChecklistDefaultDistribution`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Default Distribution Members
  Returns a collection of Users that are on the Inspections Default Distribution list. x-deprecated-at: 1644250224 deprecated: true

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:vendor_id` (integer()): Vendor ID

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_checklist_default_distribution_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_checklist_default_distribution_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :vendor_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/checklist/default_distribution")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end