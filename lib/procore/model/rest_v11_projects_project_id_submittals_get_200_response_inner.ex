# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :approvers,
    :associated_attachments,
    :ball_in_court,
    :cost_code_id,
    :created_at,
    :created_by,
    :current_revision,
    :description,
    :distributed_at,
    :distribution_members,
    :drawing_ids,
    :due_date,
    :formatted_number,
    :issue_date,
    :last_distributed_submittal,
    :linked_drawing_ids,
    :location_id,
    :number,
    :private,
    :received_date,
    :received_from,
    :responsible_contractor,
    :revision,
    :specification_section,
    :status,
    :sub_job_id,
    :submit_by,
    :submittal_manager,
    :submittal_package,
    :title,
    :type,
    :updated_at,
    :custom_fields
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :approvers =>
            [
              Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInner.t()
            ]
            | nil,
          :associated_attachments =>
            [
              Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerAssociatedAttachmentsInner.t()
            ]
            | nil,
          :ball_in_court =>
            [
              Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerBallInCourtInner.t()
            ]
            | nil,
          :cost_code_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :created_by =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser.t()
            | nil,
          :current_revision => boolean() | nil,
          :description => String.t() | nil,
          :distributed_at => DateTime.t() | nil,
          :distribution_members =>
            [
              Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser.t()
            ]
            | nil,
          :drawing_ids => [integer()] | nil,
          :due_date => Date.t() | nil,
          :formatted_number => String.t() | nil,
          :issue_date => Date.t() | nil,
          :last_distributed_submittal =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerLastDistributedSubmittal.t()
            | nil,
          :linked_drawing_ids => [integer()] | nil,
          :location_id => integer() | nil,
          :number => String.t() | nil,
          :private => boolean() | nil,
          :received_date => Date.t() | nil,
          :received_from =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser.t()
            | nil,
          :responsible_contractor =>
            Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor.t() | nil,
          :revision => String.t() | nil,
          :specification_section =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerSpecificationSection.t()
            | nil,
          :status =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerStatus.t() | nil,
          :sub_job_id => integer() | nil,
          :submit_by => Date.t() | nil,
          :submittal_manager =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser.t()
            | nil,
          :submittal_package =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerSubmittalPackage.t()
            | nil,
          :title => String.t() | nil,
          :type =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerType.t() | nil,
          :updated_at => DateTime.t() | nil,
          :custom_fields =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :approvers,
      :list,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInner
    )
    |> Deserializer.deserialize(
      :associated_attachments,
      :list,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerAssociatedAttachmentsInner
    )
    |> Deserializer.deserialize(
      :ball_in_court,
      :list,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerBallInCourtInner
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser
    )
    |> Deserializer.deserialize(:distributed_at, :datetime, nil)
    |> Deserializer.deserialize(
      :distribution_members,
      :list,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser
    )
    |> Deserializer.deserialize(:due_date, :date, nil)
    |> Deserializer.deserialize(:issue_date, :date, nil)
    |> Deserializer.deserialize(
      :last_distributed_submittal,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerLastDistributedSubmittal
    )
    |> Deserializer.deserialize(:received_date, :date, nil)
    |> Deserializer.deserialize(
      :received_from,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser
    )
    |> Deserializer.deserialize(
      :responsible_contractor,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor
    )
    |> Deserializer.deserialize(
      :specification_section,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerSpecificationSection
    )
    |> Deserializer.deserialize(
      :status,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerStatus
    )
    |> Deserializer.deserialize(:submit_by, :date, nil)
    |> Deserializer.deserialize(
      :submittal_manager,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerUser
    )
    |> Deserializer.deserialize(
      :submittal_package,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerSubmittalPackage
    )
    |> Deserializer.deserialize(
      :type,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerType
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields
    )
  end
end