# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ConstructionFinancialsCommitmentsCommitmentChangeOrders do
  @moduledoc """
  API calls for all endpoints tagged `ConstructionFinancialsCommitmentsCommitmentChangeOrders`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Show All Commitment Change Orders
  Returns all Commitment Change Orders for the specified Project. This endpoint currently only supports projects using 1 and 2 tier change order configurations.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): Specifies Which view (which attributes) of the resource is going to be present in the response. the extended view includes change events data, while the default view does not.
    - `:sort` (String.t): Direction (asc/desc) can be controlled by the presence or absence of '-' before the sort parameter.
    - `:"filters[id]"` (integer()): Filter results by Change Order ID
    - `:"filters[batch_id]"` (integer()): Filter results by Change Order Batch ID
    - `:"filters[legacy_package_id]"` (integer()): Filter results by legacy Change Order Package ID
    - `:"filters[contract_id]"` (integer()): Filter results by Contract ID
    - `:"filters[updated_at]"` (String.t): Return item(s) within a specific updated at iso8601 datetime range

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_commitment_change_orders_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_commitment_change_orders_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :view => :query,
      :sort => :query,
      :"filters[id]" => :query,
      :"filters[batch_id]" => :query,
      :"filters[legacy_package_id]" => :query,
      :"filters[contract_id]" => :query,
      :"filters[updated_at]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/commitment_change_orders")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersGet200Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Commitment Change Order
  Delete the specified Commitment Change Order. This endpoint currently only supports projects using 1 and 2 tier change order configurations.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the Commitment Change Order
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_commitment_change_orders_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_commitment_change_orders_id_delete(
        connection,
        procore_company_id,
        id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/commitment_change_orders/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Commitment Change Order
  Show the details of the Commitment Change Order. This endpoint currently only supports projects using 1 and 2 tier change order configurations.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the Commitment Change Order
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): Specifies Which view (which attributes) of the resource is going to be present in the response. the extended view includes change events data, while the default view does not.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_commitment_change_orders_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_commitment_change_orders_id_get(
        connection,
        procore_company_id,
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
      |> url("/rest/v1.0/projects/#{project_id}/commitment_change_orders/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Commitment Change Order
  Update the specified Commitment Change Order. This endpoint currently only supports projects using 1 and 2 tier change order configurations.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): ID of the Commitment Change Order
  - `project_id` (integer()): Unique identifier for the project.
  - `body47` (Body47): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.
    - `:view` (String.t): Specifies Which view (which attributes) of the resource is going to be present in the response. the extended view includes change events data, while the default view does not.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_commitment_change_orders_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body47.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_commitment_change_orders_id_patch(
        connection,
        procore_company_id,
        id,
        project_id,
        body47,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query,
      :view => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/commitment_change_orders/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body47)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Commitment Change Order
  Create a new Commitment Change Order. This endpoint currently only supports projects using 1 and 2 tier change order configurations.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `body46` (Body46): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_commitment_change_orders_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.Body46.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_commitment_change_orders_post(
        connection,
        procore_company_id,
        project_id,
        body46,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/commitment_change_orders")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body46)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10ProjectsProjectIdCommitmentChangeOrdersPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
