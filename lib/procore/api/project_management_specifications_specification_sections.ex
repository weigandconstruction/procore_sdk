# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementSpecificationsSpecificationSections do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementSpecificationsSpecificationSections`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Specification Sections
  List the Specification Sections in a Project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[id]"` ([integer()]): Return item(s) with the specified IDs.
    - `:sort` (String.t): Sorts the specification sections by number Ex. 'sort=number' Use 'sort=-number' to sort in descending order

  ### Returns

  - `{:ok, [%RestV10SpecificationSectionsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_specification_sections_get(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, list(Procore.Model.RestV10SpecificationSectionsGet200ResponseInner.t())}
          | {:ok,
             Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsPost403Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_specification_sections_get(connection, procore_company_id, project_id, opts \\ []) do
    optional_params = %{
      :"filters[id]" => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/specification_sections")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10SpecificationSectionsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403,
       Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsPost403Response}
    ])
  end

  @doc """
  Create Specification Section for a Project

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:body` (RestV10SpecificationSectionsPostRequest): 

  ### Returns

  - `{:ok, Procore.Model.RestV10SpecificationSectionsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_specification_sections_post(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10SpecificationSectionsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_specification_sections_post(connection, procore_company_id, project_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/specification_sections")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10SpecificationSectionsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end