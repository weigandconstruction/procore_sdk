# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementModelsBIMModelRevisionPlans do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementModelsBIMModelRevisionPlans`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List BIM Model Revision Plans
  Lists BIM Model Revision Plans associated with the specified Project.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:view` (String.t): The compact view contains only ids. The extended view contains the response shown below. The normal view contains 'bim_plan_id' and 'bim_level_id' instead of objects. The default view is normal.
    - `:"filters[id]"` ([integer()]): Return item(s) with the specified IDs.
    - `:"filters[bim_plan_id]"` (integer()): Filter item(s) with matching BIM Plan ids
    - `:"filters[bim_model_revision_id]"` (integer()): Filter item(s) with matching Bim Model Revision ids.
    - `:"filters[bim_level_id]"` (integer()): Filter item(s) with matching BIM Level ids

  ### Returns

  - `{:ok, [%RestV10BimModelRevisionPlansGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_bim_model_revision_plans_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_bim_model_revision_plans_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :view => :query,
      :"filters[id]" => :query,
      :"filters[bim_plan_id]" => :query,
      :"filters[bim_model_revision_id]" => :query,
      :"filters[bim_level_id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/bim_model_revision_plans")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete BIM Model Revision Plan
  Delete a BIM Model Revision Plan from the system.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): BIM Model Revision Plan ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_bim_model_revision_plans_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_bim_model_revision_plans_id_delete(
        connection,
        procore_company_id,
        id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/bim_model_revision_plans/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
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
  Show BIM Model Revision Plan
  Return a single BIM Model Revision Plan item.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `id` (integer()): BIM Model Revision Plan ID
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:view` (String.t): The compact view contains only ids. The extended view contains the response shown below. The normal view contains 'bim_plan_id' and 'bim_level_id' instead of objects. The default view is normal.

  ### Returns

  - `{:ok, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_bim_model_revision_plans_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_bim_model_revision_plans_id_get(
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
      |> url("/rest/v1.0/bim_model_revision_plans/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create BIM Model Revision Plan
  Create a relationship between a BIM Model Revision and a BIM Plan.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `body128` (Body128): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_bim_model_revision_plans_post(
          Tesla.Env.client(),
          integer(),
          Procore.Model.Body128.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_bim_model_revision_plans_post(connection, procore_company_id, body128, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/bim_model_revision_plans")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, body128)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end