# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdPlanRevisionLogsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :category,
    :comments,
    :date,
    :datetime,
    :deleted_at,
    :plan_number,
    :position,
    :revision,
    :title,
    :created_by,
    :attachments
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :category => String.t() | nil,
          :comments => String.t() | nil,
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :plan_number => String.t() | nil,
          :position => integer() | nil,
          :revision => String.t() | nil,
          :title => String.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner
    )
  end
end