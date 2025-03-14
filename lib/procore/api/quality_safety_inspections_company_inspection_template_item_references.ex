# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.QualitySafetyInspectionsCompanyInspectionTemplateItemReferences do
  @moduledoc """
  API calls for all endpoints tagged `QualitySafetyInspectionsCompanyInspectionTemplateItemReferences`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Company Inspection Template Item Reference
  Returns a collection of References for a specified Checklist Company Inspection Template.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `inspection_template_id` (integer()): The ID of the Company Inspection Template
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[id]"` ([integer()]): Return References with the specified IDs
    - `:"filters[item_id]"` ([integer()]): Return Reference(s) with the specified Item IDs and Synced Company Template Item References
    - `:"filters[created_at]"` (Date.t): Return item(s) created within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:"filters[updated_at]"` (Date.t): Return item(s) last updated within the specified ISO 8601 datetime range. Formats: `YYYY-MM-DD`...`YYYY-MM-DD` - Date `YYYY-MM-DDTHH:MM:SSZ`...`YYYY-MM-DDTHH:MM:SSZ` - DateTime with UTC Offset `YYYY-MM-DDTHH:MM:SS+XX:00`...`YYYY-MM-DDTHH:MM:SS+XX:00` - Datetime with Custom Offset
    - `:sort` (String.t): Sort item(s) by the chosen param; check below for a list of options. The direction of sorting is ascending by default; for descending sort, insert the - symbol before the param.

  ### Returns

  - `{:ok, [%RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_get(
        connection,
        procore_company_id,
        company_id,
        inspection_template_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[id]" => :query,
      :"filters[item_id]" => :query,
      :"filters[created_at]" => :query,
      :"filters[updated_at]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/companies/#{company_id}/inspection_templates/#{inspection_template_id}/item_references"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Company Inspection Template Item Reference
  Deletes a Company Inspection Template Item Reference

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `inspection_template_id` (integer()): The ID of the Company Inspection Template
  - `id` (integer()): The ID of the Company Inspection Template Item Reference
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_id_delete(
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
  def rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_id_delete(
        connection,
        procore_company_id,
        company_id,
        inspection_template_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/companies/#{company_id}/inspection_templates/#{inspection_template_id}/item_references/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Company Inspection Template Item Reference
  Shows a Company Inspection Template Item Reference

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `inspection_template_id` (integer()): The ID of the Company Inspection Template
  - `id` (integer()): The ID of the Company Inspection Template Item Reference
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_id_get(
        connection,
        procore_company_id,
        company_id,
        inspection_template_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/companies/#{company_id}/inspection_templates/#{inspection_template_id}/item_references/#{id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Company Inspection Template Item Reference
  Creates a Company Inspection Template Item Reference for a specified Checklist Template Item.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `inspection_template_id` (integer()): The ID of the Company Inspection Template
  - `template_reference` (Procore.Model.CompanyInspectionTemplateItemReferenceCreateBodyTemplateReference.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.CompanyInspectionTemplateItemReferenceCreateBodyTemplateReference.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_inspection_templates_inspection_template_id_item_references_post(
        connection,
        procore_company_id,
        company_id,
        inspection_template_id,
        template_reference,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url(
        "/rest/v1.0/companies/#{company_id}/inspection_templates/#{inspection_template_id}/item_references"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:form, :template_reference, template_reference)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201,
       Procore.Model.RestV10CompaniesCompanyIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
