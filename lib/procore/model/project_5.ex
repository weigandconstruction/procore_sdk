# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Project5 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :active,
    :address,
    :city,
    :country_code,
    :county,
    :description,
    :erp_integrated,
    :start_date,
    :completion_date,
    :total_value,
    :warranty_start_date,
    :warranty_end_date,
    :fax,
    :flag,
    :image_id,
    :name,
    :office_id,
    :phone,
    :project_number,
    :public_notes,
    :project_stage_id,
    :square_feet,
    :state_code,
    :time_zone,
    :zip,
    :parent_job_id,
    :program_id,
    :project_bid_type_id,
    :project_type_id,
    :project_owner_type_id,
    :project_region_id,
    :project_template_id,
    :origin_id,
    :origin_data,
    :origin_code,
    :department_ids,
    :estimated_value,
    :estimated_start_date,
    :estimated_completion_date,
    :store_number,
    :accounting_project_number,
    :designated_market_area,
    :"custom_field_%{custom_field_definition_id}"
  ]

  @type t :: %__MODULE__{
          :active => boolean() | nil,
          :address => String.t() | nil,
          :city => String.t() | nil,
          :country_code => String.t() | nil,
          :county => String.t() | nil,
          :description => String.t() | nil,
          :erp_integrated => boolean() | nil,
          :start_date => Date.t() | nil,
          :completion_date => Date.t() | nil,
          :total_value => float() | nil,
          :warranty_start_date => Date.t() | nil,
          :warranty_end_date => Date.t() | nil,
          :fax => String.t() | nil,
          :flag => String.t() | nil,
          :image_id => integer() | nil,
          :name => String.t() | nil,
          :office_id => integer() | nil,
          :phone => String.t() | nil,
          :project_number => String.t() | nil,
          :public_notes => String.t() | nil,
          :project_stage_id => integer() | nil,
          :square_feet => integer() | nil,
          :state_code => String.t() | nil,
          :time_zone => String.t() | nil,
          :zip => String.t() | nil,
          :parent_job_id => integer() | nil,
          :program_id => integer() | nil,
          :project_bid_type_id => integer() | nil,
          :project_type_id => integer() | nil,
          :project_owner_type_id => integer() | nil,
          :project_region_id => integer() | nil,
          :project_template_id => integer() | nil,
          :origin_id => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_code => String.t() | nil,
          :department_ids => [integer()] | nil,
          :estimated_value => float() | nil,
          :estimated_start_date => Date.t() | nil,
          :estimated_completion_date => Date.t() | nil,
          :store_number => String.t() | nil,
          :accounting_project_number => String.t() | nil,
          :designated_market_area => String.t() | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:start_date, :date, nil)
    |> Deserializer.deserialize(:completion_date, :date, nil)
    |> Deserializer.deserialize(:warranty_start_date, :date, nil)
    |> Deserializer.deserialize(:warranty_end_date, :date, nil)
    |> Deserializer.deserialize(:estimated_start_date, :date, nil)
    |> Deserializer.deserialize(:estimated_completion_date, :date, nil)
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end