# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompanyConfigurationGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :strict_file_uploading,
    :enable_image_real_time_as_builts,
    :currency_symbol,
    :currency_display,
    :currency_iso_code,
    :timecard_employees_see_all_projects,
    :timesheet_enabled_cost_type,
    :timesheet_type,
    :enable_sd_storage,
    :timesheets_custom_signature_text,
    :timesheets_week_start_day,
    :use_24_hour_mode,
    :timesheets_tab_enabled,
    :timecard_should_track_location,
    :projects_timecard_in_out_enabled,
    :rounding_configuration,
    :time_and_materials_company_config,
    :projects_timecard_default_lunch_time,
    :projects_timecard_default_start_time,
    :projects_timecard_default_stop_time,
    :projects_timecard_lunch_time_tracking,
    :task_codes_enabled,
    :timecard_employees_can_select_non_budgeted_items,
    :timecards_private,
    :timesheet_default_cost_type_id,
    :timesheet_erp_default_cost_type_id
  ]

  @type t :: %__MODULE__{
          :strict_file_uploading => boolean() | nil,
          :enable_image_real_time_as_builts => boolean() | nil,
          :currency_symbol => String.t() | nil,
          :currency_display => String.t() | nil,
          :currency_iso_code => String.t() | nil,
          :timecard_employees_see_all_projects => boolean() | nil,
          :timesheet_enabled_cost_type => [integer()] | nil,
          :timesheet_type => [integer()] | nil,
          :enable_sd_storage => boolean() | nil,
          :timesheets_custom_signature_text => String.t() | nil,
          :timesheets_week_start_day => integer() | nil,
          :use_24_hour_mode => boolean() | nil,
          :timesheets_tab_enabled => boolean() | nil,
          :timecard_should_track_location => [integer()] | nil,
          :projects_timecard_in_out_enabled => [integer()] | nil,
          :rounding_configuration =>
            Procore.Model.RestV10CompanyConfigurationGet200ResponseRoundingConfiguration.t() | nil,
          :time_and_materials_company_config =>
            Procore.Model.RestV10CompanyConfigurationGet200ResponseTimeAndMaterialsCompanyConfig.t()
            | nil,
          :projects_timecard_default_lunch_time =>
            [
              Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultLunchTimeInner.t()
            ]
            | nil,
          :projects_timecard_default_start_time =>
            [
              Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultStartTimeInner.t()
            ]
            | nil,
          :projects_timecard_default_stop_time =>
            [
              Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultStopTimeInner.t()
            ]
            | nil,
          :projects_timecard_lunch_time_tracking =>
            [
              Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardLunchTimeTrackingInner.t()
            ]
            | nil,
          :task_codes_enabled => boolean() | nil,
          :timecard_employees_can_select_non_budgeted_items => [integer()] | nil,
          :timecards_private => boolean() | nil,
          :timesheet_default_cost_type_id => integer() | nil,
          :timesheet_erp_default_cost_type_id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :rounding_configuration,
      :struct,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseRoundingConfiguration
    )
    |> Deserializer.deserialize(
      :time_and_materials_company_config,
      :struct,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseTimeAndMaterialsCompanyConfig
    )
    |> Deserializer.deserialize(
      :projects_timecard_default_lunch_time,
      :list,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultLunchTimeInner
    )
    |> Deserializer.deserialize(
      :projects_timecard_default_start_time,
      :list,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultStartTimeInner
    )
    |> Deserializer.deserialize(
      :projects_timecard_default_stop_time,
      :list,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardDefaultStopTimeInner
    )
    |> Deserializer.deserialize(
      :projects_timecard_lunch_time_tracking,
      :list,
      Procore.Model.RestV10CompanyConfigurationGet200ResponseProjectsTimecardLunchTimeTrackingInner
    )
  end
end