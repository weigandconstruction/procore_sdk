# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsChecklistAttachments do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsChecklistAttachments`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Delete Attachment
  Deletes the specified Attachment

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `list_id` (integer()): Checklist (Inspection) ID
  - `id` (integer()): Attachment ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_checklist_lists_list_id_attachments_id_delete(
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
  def rest_v10_projects_project_id_checklist_lists_list_id_attachments_id_delete(
        connection,
        procore_company_id,
        project_id,
        list_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/checklist/lists/#{list_id}/attachments/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Attachment
  Creates an attachment for the specified Checklist (Inspection).

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `list_id` (integer()): Checklist (Inspection) ID
  - `body115` (Body115): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.ChecklistInspectionAttachment1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_checklist_lists_list_id_attachments_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body115.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.ChecklistInspectionAttachment1.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_checklist_lists_list_id_attachments_post(
        connection,
        procore_company_id,
        project_id,
        list_id,
        body115,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/checklist/lists/#{list_id}/attachments")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body115)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.ChecklistInspectionAttachment1},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
