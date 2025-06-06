# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementDailyLogDailyLogCounts do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementDailyLogDailyLogCounts`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Counts of Daily Logs
  Returns counts of all daily logs arranged by type, given the current user permissions. Read Only/Standard users will see only counts of approved logs, Collaborator users will see only counts of logs created by themselves, Admins can use filter options to see all logs, or only a specific approval status (defaulting to approved).  See [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) for information on filtering the response using the log\\_date, start\\_date, and end\\_date parameters. Note that if none of the date parameters are provided in the call, only logs from the current date are returned.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:log_date` (Date.t): Date of specific logs desired. Example formats YYYY-MM-DD, YYYY/MM/DD, DD-MM-YYYY, DD/MM/YYYY
    - `:start_date` (Date.t): Start date of specific logs desired. Use together with end_date to specify a date range. Example formats YYYY-MM-DD, YYYY/MM/DD, DD-MM-YYYY, DD/MM/YYYY
    - `:end_date` (Date.t): End date of specific logs desired. Use together with start_date to specify a date range. Example formats YYYY-MM-DD, YYYY/MM/DD, DD-MM-YYYY, DD/MM/YYYY
    - `:"filters[status]"` (String.t): Filter on log status
    - `:"filters[created_by_id]"` ([integer()]): Returns item(s) created by the specified User IDs.
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdDailyLogsCountGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_counts_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.RestV10ProjectsProjectIdDailyLogsCountGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_counts_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :log_date => :query,
      :start_date => :query,
      :end_date => :query,
      :"filters[status]" => :query,
      :"filters[created_by_id]" => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/counts")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdDailyLogsCountGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
