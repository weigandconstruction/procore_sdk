# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementDailyLogWeatherLogs do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementDailyLogWeatherLogs`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  List Accepted Weather Conditions
  Returns accepted weather conditions for the sky, ground, temperature, calamity, and wind categories. This is a deprecated endpoint, please use [Weather Conditions](weather-conditions#list-accepted-weather-conditions)

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsConditionsGet200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_conditions_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsConditionsGet200Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_conditions_get(
        connection,
        procore_company_id,
        project_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs/conditions")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWeatherLogsConditionsGet200Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Weather Logs
  Returns all Weather Logs for the current date.  See [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) for information on filtering the response using the log\\_date, start\\_date, and end\\_date parameters. Note that if none of the date parameters are provided in the call, only logs from the current date are returned.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `opts` (keyword): Optional parameters
    - `:log_date` (Date.t): Date of specific logs desired in YYYY-MM-DD format
    - `:start_date` (Date.t): Start date of specific logs desired in YYYY-MM-DD format (use together with end_date)
    - `:end_date` (Date.t): End date of specific logs desired in YYYY-MM-DD format (use together with start_date)
    - `:page` (integer()): Page
    - `:per_page` (integer()): Elements per page

  ### Returns

  - `{:ok, [%RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, [Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t()]}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_get(
        connection,
        procore_company_id,
        project_id,
        opts \\ []
      ) do
    optional_params = %{
      :log_date => :query,
      :start_date => :query,
      :end_date => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Weather Log
  Delete single Weather Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Use log date as your ID. Format YYYYMMDD ie:20161108
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Weather Logs
  Returns single Weather Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Use log date as your ID. Format YYYYMMDD ie:20161108
  - `opts` (keyword): Optional parameters
    - `:log_date` (Date.t): Log date of specific log desired in YYYY-MM-DD format (This will override ID as log Date)

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :log_date => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Weather Log
  Update single Weather Log.  #### See - [Daily Log guide](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Use log date as your ID. Format YYYYMMDD ie:20161108
  - `rest_v10_projects_project_id_weather_logs_post_request` (RestV10ProjectsProjectIdWeatherLogsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdWeatherLogsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v10_projects_project_id_weather_logs_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, rest_v10_projects_project_id_weather_logs_post_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Weather Log
  Creates single Weather Log.  #### See - [Daily Log guide](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v10_projects_project_id_weather_logs_post_request` (RestV10ProjectsProjectIdWeatherLogsPostRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_projects_project_id_weather_logs_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV10ProjectsProjectIdWeatherLogsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_projects_project_id_weather_logs_post(
        connection,
        procore_company_id,
        project_id,
        rest_v10_projects_project_id_weather_logs_post_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/projects/#{project_id}/weather_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:body, :body, rest_v10_projects_project_id_weather_logs_post_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10ProjectsProjectIdWeatherLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  List Weather Logs
  Returns all Weather Logs for the current date.  See [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) for information on filtering the response using the log\\_date, start\\_date, and end\\_date parameters. Note that if none of the date parameters are provided in the call, only logs from the current date are returned.

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

  - `{:ok, [%RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_weather_logs_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok,
           [Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t()]}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_weather_logs_get(
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
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/weather_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Delete Weather Log
  Delete single Weather Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Weather Log ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_weather_logs_id_delete(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_weather_logs_id_delete(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Show Weather Log
  Returns single Weather Log.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Weather Log ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_weather_logs_id_get(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_weather_logs_id_get(
        connection,
        procore_company_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update Weather Log
  Update single Weather Log.  #### See - [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): Weather Log ID
  - `rest_v11_projects_project_id_daily_logs_weather_logs_post_request` (RestV11ProjectsProjectIdDailyLogsWeatherLogsPostRequest): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_weather_logs_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_weather_logs_id_patch(
        connection,
        procore_company_id,
        project_id,
        id,
        rest_v11_projects_project_id_daily_logs_weather_logs_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/weather_logs/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v11_projects_project_id_daily_logs_weather_logs_post_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create Weather Log
  Creates single Weather Log.  #### See - [Working with Daily Logs](https://developers.procore.com/documentation/daily-logs) - for additional info on * Attachments

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `rest_v11_projects_project_id_daily_logs_weather_logs_post_request` (RestV11ProjectsProjectIdDailyLogsWeatherLogsPostRequest): 
  - `opts` (keyword): Optional parameters
    - `:run_configurable_validations` (boolean()): If true, validations are run for the corresponding Configurable Field Set.

  ### Returns

  - `{:ok, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v11_projects_project_id_daily_logs_weather_logs_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsPostRequest.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok,
             Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner.t()}
          | {:error, Tesla.Env.t()}
  def rest_v11_projects_project_id_daily_logs_weather_logs_post(
        connection,
        procore_company_id,
        project_id,
        rest_v11_projects_project_id_daily_logs_weather_logs_post_request,
        opts \\ []
      ) do
    optional_params = %{
      :run_configurable_validations => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.1/projects/#{project_id}/daily_logs/weather_logs")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(
        :body,
        :body,
        rest_v11_projects_project_id_daily_logs_weather_logs_post_request
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInner},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {422, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
