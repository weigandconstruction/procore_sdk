# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Api.ProjectManagementMeetingsMeetingAttendees do
  @moduledoc """
  API calls for all endpoints tagged `ProjectManagementMeetingsMeetingAttendees`.
  """

  alias Procore.Connection
  import Procore.RequestBuilder

  @doc """
  Delete meeting attendee record
  Delete a specified meeting attendee record, disassociating a given user from a meeting

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `meeting_id` (integer()): ID of the Meeting
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): ID of the Meeting Attendee record
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_meeting_attendee_records_id_delete(
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
  def rest_v10_meeting_attendee_records_id_delete(
        connection,
        procore_company_id,
        meeting_id,
        project_id,
        id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/rest/v1.0/meeting_attendee_records/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :meeting_id, meeting_id)
      |> add_param(:query, :project_id, project_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Update meeting attendee record
  Update a Meeting Attendee record.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `meeting_id` (integer()): ID of the Meeting
  - `project_id` (integer()): Unique identifier for the project.
  - `id` (integer()): ID of the Meeting Attendee record
  - `body69` (Body69): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_meeting_attendee_records_id_patch(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body69.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_meeting_attendee_records_id_patch(
        connection,
        procore_company_id,
        meeting_id,
        project_id,
        id,
        body69,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/rest/v1.0/meeting_attendee_records/#{id}")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :meeting_id, meeting_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:body, :body, body69)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end

  @doc """
  Create meeting attendee record
  Create a new Meeting Attendee record. This associates a user with a meeting.

  ### Parameters

  - `connection` (Procore.Connection): Connection to server
  - `procore_company_id` (integer()): Unique company identifier associated with the Procore User Account.
  - `project_id` (integer()): Unique identifier for the project.
  - `meeting_id` (integer()): ID of the Meeting
  - `body69` (Body69): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rest_v10_meeting_attendee_records_post(
          Tesla.Env.client(),
          integer(),
          integer(),
          integer(),
          Procore.Model.Body69.t(),
          keyword()
        ) ::
          {:ok, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response.t()}
          | {:ok, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response.t()}
          | {:error, Tesla.Env.t()}
  def rest_v10_meeting_attendee_records_post(
        connection,
        procore_company_id,
        project_id,
        meeting_id,
        body69,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/rest/v1.0/meeting_attendee_records")
      |> add_param(:headers, :"Procore-Company-Id", procore_company_id)
      |> add_param(:query, :project_id, project_id)
      |> add_param(:query, :meeting_id, meeting_id)
      |> add_param(:body, :body, body69)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Procore.Model.RestV10MeetingAttendeeRecordsPost201Response},
      {400, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {401, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {403, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response},
      {:default, Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet401Response}
    ])
  end
end
