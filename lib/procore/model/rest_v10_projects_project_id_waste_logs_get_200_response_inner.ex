# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :approximate_quantity,
    :created_at,
    :date,
    :datetime,
    :deleted_at,
    :description,
    :disposal_location,
    :material,
    :method_of_disposal,
    :position,
    :time_hour,
    :time_minute,
    :updated_at,
    :created_by,
    :vendor,
    :attachments
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :approximate_quantity => integer() | nil,
          :created_at => DateTime.t() | nil,
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :disposal_location => String.t() | nil,
          :material => String.t() | nil,
          :method_of_disposal => String.t() | nil,
          :position => integer() | nil,
          :time_hour => integer() | nil,
          :time_minute => integer() | nil,
          :updated_at => DateTime.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :vendor =>
            Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :vendor,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner
    )
  end
end