# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.GenericToolItemResponse do
  @moduledoc """
  Generic Tool Item Response
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :notes,
    :created_at,
    :official,
    :position,
    :status,
    :created_by,
    :attachments
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :notes => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :official => boolean() | nil,
          :position => integer() | nil,
          :status => String.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdRfisDefaultDistributionGet200ResponseInner.t()
            | nil,
          :attachments =>
            [Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdRfisDefaultDistributionGet200ResponseInner
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
  end
end