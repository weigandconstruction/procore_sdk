# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdVendorsInactiveGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :abbreviated_name,
    :address,
    :authorized_bidder,
    :business_id,
    :business_phone,
    :city,
    :contact_count,
    :company,
    :company_vendor,
    :country_code,
    :created_at,
    :email_address,
    :fax_number,
    :is_active,
    :is_connected,
    :labor_union,
    :license_number,
    :logo,
    :mobile_phone,
    :non_union_prevailing_wage,
    :notes,
    :origin_data,
    :origin_id,
    :origin_code,
    :prequalified,
    :state_code,
    :synced_to_erp,
    :trade_name,
    :union_member,
    :updated_at,
    :website,
    :zip,
    :business_register,
    :vendor_group,
    :primary_contact,
    :attachments,
    :children_count,
    :legal_name,
    :parent,
    :trades,
    :bidding_distribution,
    :bidding,
    :project_ids,
    :standard_cost_codes,
    :_links
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :abbreviated_name => String.t() | nil,
          :address => String.t() | nil,
          :authorized_bidder => boolean() | nil,
          :business_id => String.t() | nil,
          :business_phone => String.t() | nil,
          :city => String.t() | nil,
          :contact_count => integer() | nil,
          :company => String.t() | nil,
          :company_vendor => boolean() | nil,
          :country_code => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :email_address => String.t() | nil,
          :fax_number => String.t() | nil,
          :is_active => boolean() | nil,
          :is_connected => boolean() | nil,
          :labor_union => String.t() | nil,
          :license_number => String.t() | nil,
          :logo => String.t() | nil,
          :mobile_phone => String.t() | nil,
          :non_union_prevailing_wage => boolean() | nil,
          :notes => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :origin_code => String.t() | nil,
          :prequalified => boolean() | nil,
          :state_code => String.t() | nil,
          :synced_to_erp => boolean() | nil,
          :trade_name => String.t() | nil,
          :union_member => boolean() | nil,
          :updated_at => DateTime.t() | nil,
          :website => String.t() | nil,
          :zip => String.t() | nil,
          :business_register => Procore.Model.NormalViewBusinessRegister.t() | nil,
          :vendor_group => Procore.Model.NormalViewVendorGroup.t() | nil,
          :primary_contact => Procore.Model.NormalViewPrimaryContact.t() | nil,
          :attachments =>
            [Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner.t()] | nil,
          :children_count => integer() | nil,
          :legal_name => String.t() | nil,
          :parent => Procore.Model.ExtendedView2Parent.t() | nil,
          :trades => [Procore.Model.Trade2.t()] | nil,
          :bidding_distribution =>
            [Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee.t()] | nil,
          :bidding => Procore.Model.ExtendedView2Bidding.t() | nil,
          :project_ids => [integer()] | nil,
          :standard_cost_codes => [Procore.Model.StandardCostCode.t()] | nil,
          :_links =>
            Procore.Model.RestV10ProjectsProjectIdVendorsInactiveGet200ResponseInnerAllOfLinks.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :business_register,
      :struct,
      Procore.Model.NormalViewBusinessRegister
    )
    |> Deserializer.deserialize(:vendor_group, :struct, Procore.Model.NormalViewVendorGroup)
    |> Deserializer.deserialize(:primary_contact, :struct, Procore.Model.NormalViewPrimaryContact)
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseAttachmentsInner
    )
    |> Deserializer.deserialize(:parent, :struct, Procore.Model.ExtendedView2Parent)
    |> Deserializer.deserialize(:trades, :list, Procore.Model.Trade2)
    |> Deserializer.deserialize(
      :bidding_distribution,
      :list,
      Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee
    )
    |> Deserializer.deserialize(:bidding, :struct, Procore.Model.ExtendedView2Bidding)
    |> Deserializer.deserialize(:standard_cost_codes, :list, Procore.Model.StandardCostCode)
    |> Deserializer.deserialize(
      :_links,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdVendorsInactiveGet200ResponseInnerAllOfLinks
    )
  end
end
