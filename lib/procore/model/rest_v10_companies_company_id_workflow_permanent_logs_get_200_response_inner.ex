# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInner do
  @moduledoc """
  Workflow Permanent Log
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :activity,
    :attachments,
    :ball_in_court_duration,
    :comments,
    :created_at,
    :performed_by,
    :user_role
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :activity => String.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner.t()
            ]
            | nil,
          :ball_in_court_duration => String.t() | nil,
          :comments => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :performed_by => String.t() | nil,
          :user_role => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
  end
end