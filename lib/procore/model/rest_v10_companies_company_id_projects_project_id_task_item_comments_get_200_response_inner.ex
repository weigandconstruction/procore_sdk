# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsGet200ResponseInner do
  @moduledoc """
  Normal view of task item comment
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :comment,
    :status,
    :attachments,
    :created_by,
    :task_item_id,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :comment => String.t() | nil,
          :status => String.t() | nil,
          :attachments =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t() | nil,
          :created_by =>
            Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsGet200ResponseInnerCreatedBy.t()
            | nil,
          :task_item_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachments,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdProjectsProjectIdTaskItemCommentsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end
