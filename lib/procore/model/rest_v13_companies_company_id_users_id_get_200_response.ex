# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV13CompaniesCompanyIdUsersIdGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :address,
    :add_to_new_projects,
    :avatar,
    :business_id,
    :business_phone,
    :business_phone_extension,
    :city,
    :country_code,
    :email_address,
    :email_signature,
    :employee_id,
    :fax_number,
    :first_name,
    :id,
    :initials,
    :is_active,
    :is_employee,
    :is_insurance_manager,
    :job_title,
    :last_login_at,
    :last_name,
    :mobile_phone,
    :name,
    :notes,
    :state_code,
    :zip,
    :origin_id,
    :origin_data,
    :created_at,
    :updated_at,
    :vendor,
    :work_classification_id,
    :default_permission_template_id,
    :company_permission_template_id,
    :bid_contact,
    :contact_id,
    :erp_integrated_accountant,
    :last_activated_at,
    :permission_template,
    :role,
    :verified_employee,
    :welcome_email_sent_at
  ]

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :add_to_new_projects => boolean() | nil,
          :avatar => String.t() | nil,
          :business_id => String.t() | nil,
          :business_phone => String.t() | nil,
          :business_phone_extension => integer() | nil,
          :city => String.t() | nil,
          :country_code => String.t() | nil,
          :email_address => String.t() | nil,
          :email_signature => String.t() | nil,
          :employee_id => String.t() | nil,
          :fax_number => String.t() | nil,
          :first_name => String.t() | nil,
          :id => integer() | nil,
          :initials => String.t() | nil,
          :is_active => boolean() | nil,
          :is_employee => boolean() | nil,
          :is_insurance_manager => boolean() | nil,
          :job_title => String.t() | nil,
          :last_login_at => DateTime.t() | nil,
          :last_name => String.t() | nil,
          :mobile_phone => String.t() | nil,
          :name => String.t() | nil,
          :notes => String.t() | nil,
          :state_code => String.t() | nil,
          :zip => String.t() | nil,
          :origin_id => String.t() | nil,
          :origin_data => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :vendor =>
            Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor.t() | nil,
          :work_classification_id => integer() | nil,
          :default_permission_template_id => integer() | nil,
          :company_permission_template_id => integer() | nil,
          :bid_contact => boolean() | nil,
          :contact_id => integer() | nil,
          :erp_integrated_accountant => boolean() | nil,
          :last_activated_at => DateTime.t() | nil,
          :permission_template => Procore.Model.CompanyUserPermissionTemplate.t() | nil,
          :role => String.t() | nil,
          :verified_employee => boolean() | nil,
          :welcome_email_sent_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:last_login_at, :datetime, nil)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :vendor,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor
    )
    |> Deserializer.deserialize(:last_activated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :permission_template,
      :struct,
      Procore.Model.CompanyUserPermissionTemplate
    )
    |> Deserializer.deserialize(:welcome_email_sent_at, :datetime, nil)
  end
end
