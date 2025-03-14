# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInner do
  @moduledoc """
  Response schema for a single Project.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :project_number,
    :status,
    :start_date,
    :est_end_date,
    :closed_date,
    :timezone,
    :color,
    :daily_start_time,
    :daily_end_time,
    :bid_rate,
    :percent_complete,
    :customer_name,
    :project_type,
    :address_1,
    :address_2,
    :city_town,
    :state_province,
    :zipcode,
    :country,
    :group_ids,
    :roles,
    :categories,
    :tag_instances,
    :wage_overrides,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :project_number => String.t() | nil,
          :status => String.t() | nil,
          :start_date => integer() | nil,
          :est_end_date => integer() | nil,
          :closed_date => integer() | nil,
          :timezone => String.t() | nil,
          :color => String.t() | nil,
          :daily_start_time => String.t() | nil,
          :daily_end_time => String.t() | nil,
          :bid_rate => float() | nil,
          :percent_complete => float() | nil,
          :customer_name => String.t() | nil,
          :project_type => String.t() | nil,
          :address_1 => String.t() | nil,
          :address_2 => String.t() | nil,
          :city_town => String.t() | nil,
          :state_province => String.t() | nil,
          :zipcode => String.t() | nil,
          :country => String.t() | nil,
          :group_ids => [String.t()] | nil,
          :roles =>
            [
              Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerRolesInner.t()
            ]
            | nil,
          :categories =>
            [
              Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerCategoriesInner.t()
            ]
            | nil,
          :tag_instances =>
            [
              Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerTagInstancesInner.t()
            ]
            | nil,
          :wage_overrides =>
            [
              Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerWageOverridesInner.t()
            ]
            | nil,
          :created_at => integer() | nil,
          :updated_at => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :roles,
      :list,
      Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerRolesInner
    )
    |> Deserializer.deserialize(
      :categories,
      :list,
      Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerCategoriesInner
    )
    |> Deserializer.deserialize(
      :tag_instances,
      :list,
      Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerTagInstancesInner
    )
    |> Deserializer.deserialize(
      :wage_overrides,
      :list,
      Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsGet200ResponseInnerWageOverridesInner
    )
  end
end
