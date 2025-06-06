# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreProjectDirectoryProjectPermissionTemplates do
  @moduledoc """
  API calls for all endpoints tagged `CoreProjectDirectoryProjectPermissionTemplates`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List all available permission templates for a Project
  Returns the name, id, and project specific status for all Permission Templates available to use on the specified Project for those with Admin Permissions. If a user has access to the Directory Granular Permission of 'Create and Edit Users' they will be able to fetch a list of their assignable templates if they pass the filter `assignables_only` as true

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:"filters[assignables_only]"` (boolean()): Returns user's assignable permission templates

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdPermissionTemplatesGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_permission_templates_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             [Procore.Model.RestV10ProjectsProjectIdPermissionTemplatesGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_permission_templates_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :"filters[assignables_only]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/permission_templates")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdPermissionTemplatesGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
