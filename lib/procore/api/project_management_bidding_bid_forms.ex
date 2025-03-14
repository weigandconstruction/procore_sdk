# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementBiddingBidForms do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementBiddingBidForms`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Bid Level across a Bid Form
  Compare all bids submitted to a bid form

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `opts` (keyword): Optional parameters
    - `:export_format` (String.t): Export File Format

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_bid_leveling_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_bid_leveling_get(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        opts \\ []
      ) do
    optional_params = %{
      :export_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}/bid_leveling"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Bid Form
  Delete a single Bid Form and its associated Sections and Items.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_delete(
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
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_delete(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url(
        "/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}"
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

  @doc """
  View Bid Form
  View single Bid Form.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_get(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Bid Form
  Update single Bid Form.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `body149` (Body149): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body149.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_patch(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        body149,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body149)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Index Bid Forms
  Fetches a list of Bid Forms for a Bid Package

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `opts` (keyword): Optional parameters
    - `:excluded_bid_form_id` (integer()): Bid Form Id to exclude
    - `:view` (String.t): View that enables Use Previous Bidders functionality and provides project and bid package name
    - `:search` (String.t): Search for a bid form
    - `:sort` (String.t): Direction (asc/desc) can be controlled by the presence or absence of '-' before the sort parameter.

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [
               Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsGet200ResponseInner.t()
             ]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_get(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        opts \\ []
      ) do
    optional_params = %{
      :excluded_bid_form_id => :query,
      :view => :query,
      :search => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV10ProjectsProjectIdBidPackagesBidPackageIdBidFormsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create a Bid Form
  Create a Bid Form for a Bid Package. A bid form is needed to submit a bid, since the bid will be made against the bid form.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `body149` (Body149): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body149.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_bid_packages_bid_package_id_bid_forms_post(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        body149,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body149)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Bid Level across a Bid Form
  Compare all bids submitted to a bid form

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `opts` (keyword): Optional parameters
    - `:export_format` (String.t): Export File Format

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_bid_leveling_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV11ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_bid_leveling_get(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        opts \\ []
      ) do
    optional_params = %{
      :export_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/rest/v1.1/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}/bid_leveling"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200,
       Procore.Model.RestV11ProjectsProjectIdBidPackagesBidPackageIdBidFormsBidFormIdBidLevelingGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Bid Form
  Update single Bid Form.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `bid_form_id` (integer()): Bid Form ID
  - `body148` (Body148): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body148.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_bid_form_id_patch(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        bid_form_id,
        body148,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/rest/v1.1/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms/#{bid_form_id}"
      )
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body148)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {404, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create a Bid Form
  Create a Bid Form for a Bid Package. A bid form is needed to submit a bid, since the bid will be made against the bid form.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `bid_package_id` (integer()): Bid Package ID
  - `body147` (Body147): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body147.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_bid_packages_bid_package_id_bid_forms_post(
        connection,
        procore_company_id,
        project_id,
        bid_package_id,
        body147,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.1/projects/#{project_id}/bid_packages/#{bid_package_id}/bid_forms")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body147)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10CompaniesCompanyIdBidBidIdBidFormsBidFormIdGet200Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
