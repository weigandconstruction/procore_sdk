# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV13CompaniesCompanyIdUsersGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :address,
    :avatar,
    :business_id,
    :business_phone,
    :business_phone_extension,
    :city,
    :contact_id,
    :country_code,
    :created_at,
    :email_address,
    :email_signature,
    :employee_id,
    :erp_integrated_accountant,
    :fax_number,
    :first_name,
    :id,
    :initials,
    :is_active,
    :is_employee,
    :job_title,
    :last_activated_at,
    :last_login_at,
    :last_name,
    :mobile_phone,
    :name,
    :notes,
    :origin_id,
    :origin_data,
    :state_code,
    :updated_at,
    :welcome_email_sent_at,
    :zip,
    :work_classification_id,
    :permission_template,
    :company_permission_template,
    :vendor,
    :role,
    :verified_employee
  ]

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :avatar => String.t() | nil,
          :business_id => String.t() | nil,
          :business_phone => String.t() | nil,
          :business_phone_extension => integer() | nil,
          :city => String.t() | nil,
          :contact_id => integer() | nil,
          :country_code => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :email_address => String.t() | nil,
          :email_signature => String.t() | nil,
          :employee_id => String.t() | nil,
          :erp_integrated_accountant => boolean() | nil,
          :fax_number => String.t() | nil,
          :first_name => String.t() | nil,
          :id => integer() | nil,
          :initials => String.t() | nil,
          :is_active => boolean() | nil,
          :is_employee => boolean() | nil,
          :job_title => String.t() | nil,
          :last_activated_at => DateTime.t() | nil,
          :last_login_at => DateTime.t() | nil,
          :last_name => String.t() | nil,
          :mobile_phone => String.t() | nil,
          :name => String.t() | nil,
          :notes => String.t() | nil,
          :origin_id => String.t() | nil,
          :origin_data => String.t() | nil,
          :state_code => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :welcome_email_sent_at => DateTime.t() | nil,
          :zip => String.t() | nil,
          :work_classification_id => integer() | nil,
          :permission_template => Procore.Model.CompanyUserPermissionTemplate.t() | nil,
          :company_permission_template => Procore.Model.CompanyUserPermissionTemplate.t() | nil,
          :vendor =>
            Procore.Model.RestV10ProjectsProjectIdPunchItemAssignmentsIdGet200ResponseVendor.t()
            | nil,
          :role => String.t() | nil,
          :verified_employee => boolean() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:last_activated_at, :datetime, nil)
    |> Deserializer.deserialize(:last_login_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:welcome_email_sent_at, :datetime, nil)
    |> Deserializer.deserialize(
      :permission_template,
      :struct,
      Procore.Model.CompanyUserPermissionTemplate
    )
    |> Deserializer.deserialize(
      :company_permission_template,
      :struct,
      Procore.Model.CompanyUserPermissionTemplate
    )
    |> Deserializer.deserialize(
      :vendor,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdPunchItemAssignmentsIdGet200ResponseVendor
    )
  end
end
