# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreCompanyDirectoryDistributionGroups do
  @moduledoc """
  API calls for all endpoints tagged `CoreCompanyDirectoryDistributionGroups`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Distribution Groups
  Return a list of all Distribution Groups associated with a Company.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): Unique identifier for the company.
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[search]"` (String.t): Returns item(s) matching the specified search query string.
    - `:with_domain_users` (RestV10CompaniesCompanyIdDistributionGroupsGetWithDomainUsersParameter): Return list of user IDs that have permissions to view specified domain.
    - `:sort` (String.t): Return items with the specified sort.
    - `:view` (String.t): Parameter affecting what level of detail will be returned from the endpoint. 'extended' will include the users included in each distribution group.

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_distribution_groups_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             list(Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner.t())}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_distribution_groups_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[search]" => :query,
      :with_domain_users => :query,
      :sort => :query,
      :view => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/distribution_groups")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdDistributionGroupsGet200ResponseInner},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end