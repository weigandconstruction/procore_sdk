# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.CoreCompanyDirectoryCompanyInactivePeople do
  @moduledoc """
  API calls for all endpoints tagged `CoreCompanyDirectoryCompanyInactivePeople`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Inactive Company People
  Return a list of People associated with a Company. Includes users in the directory and reference users. See [Filtering on List Actions](https://developers.procore.com/documentation/filtering-on-list-actions) for information on using the filtering capabilities provided by this endpoint.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `company_id` (integer()): ID of the project
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page
    - `:"filters[is_employee]"` (boolean()): If true, returns item(s) where `is_employee` value is true.
    - `:"filters[reference_users_only]"` (boolean()): If true, returns only people who are reference users.
    - `:"filters[include_company_people]"` (boolean()): If true, returns people in the Company not just the Project. This option only works if the user has permission to create people in the project directory or permission to read from the company directory.
    - `:"filters[search]"` (String.t): Returns item(s) matching the specified search query string.
    - `:"filters[connected]"` (boolean()): If true, returns only people who are connected users. If false, returns only people who are not connected users.
    - `:"filters[state_code]"` (String.t): Returns only people who have the specified state code.
    - `:"filters[job_title]"` (String.t): Returns only people who have the specified job title.
    - `:"filters[vendor_id]"` ([integer()]): Return item(s) with the specified Vendor IDs.
    - `:"filters[trade_id]"` ([integer()]): Array of Trade IDs. Returns item(s) with the specified Trade IDs.

  ### Returns

  - `{:ok, [%CompanyPerson{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_companies_company_id_people_inactive_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.CompanyPerson.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_companies_company_id_people_inactive_get(
        connection,
        procore_company_id,
        company_id,
        opts \\ []
      ) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :"filters[is_employee]" => :query,
      :"filters[reference_users_only]" => :query,
      :"filters[include_company_people]" => :query,
      :"filters[search]" => :query,
      :"filters[connected]" => :query,
      :"filters[state_code]" => :query,
      :"filters[job_title]" => :query,
      :"filters[vendor_id]" => :query,
      :"filters[trade_id]" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/companies/#{company_id}/people/inactive")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.CompanyPerson},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
