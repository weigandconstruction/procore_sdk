# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementBiddingBidFormSections do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementBiddingBidFormSections`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Delete Bid Form Section
  Delete single Bid Form Section.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_section_id` (integer()): Bid Form Section ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_form_sections_bid_form_section_id_delete(
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
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_form_sections_bid_form_section_id_delete(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_section_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_form_sections/#{bid_form_section_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end