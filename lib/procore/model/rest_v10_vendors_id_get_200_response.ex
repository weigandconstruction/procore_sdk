# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10VendorsIdGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :abbreviated_name,
    :address,
    :attachments,
    :authorized_bidder,
    :business_id,
    :business_phone,
    :business_register,
    :city,
    :contact_count,
    :company,
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
    :origin_code,
    :origin_data,
    :origin_id,
    :prequalified,
    :primary_contact,
    :state_code,
    :synced_to_erp,
    :trade_name,
    :union_member,
    :updated_at,
    :vendor_group,
    :website,
    :zip,
    :origin_custom_fields,
    :erp_custom_fields,
    :bidding,
    :bidding_distribution,
    :children_count,
    :company_vendor,
    :legal_name,
    :parent,
    :project_ids,
    :standard_cost_codes,
    :trades,
    :business,
    :contract_signer,
    :country_name,
    :state_name,
    :invoice_contacts,
    :active_users_count,
    :bids_count,
    :open_bids_count,
    :projects_count
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :abbreviated_name => String.t() | nil,
          :address => String.t() | nil,
          :attachments => [Procore.Model.NormalViewAttachmentsInner.t()] | nil,
          :authorized_bidder => boolean() | nil,
          :business_id => integer() | nil,
          :business_phone => String.t() | nil,
          :business_register => Procore.Model.NormalViewBusinessRegister.t() | nil,
          :city => String.t() | nil,
          :contact_count => integer() | nil,
          :company => String.t() | nil,
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
          :origin_code => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :prequalified => boolean() | nil,
          :primary_contact => Procore.Model.NormalViewPrimaryContact.t() | nil,
          :state_code => String.t() | nil,
          :synced_to_erp => boolean() | nil,
          :trade_name => String.t() | nil,
          :union_member => boolean() | nil,
          :updated_at => DateTime.t() | nil,
          :vendor_group => Procore.Model.NormalViewVendorGroup.t() | nil,
          :website => String.t() | nil,
          :zip => String.t() | nil,
          :origin_custom_fields => [String.t()] | nil,
          :erp_custom_fields => [String.t()] | nil,
          :bidding => Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBidding.t() | nil,
          :bidding_distribution =>
            [Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBiddingDistributionInner.t()]
            | nil,
          :children_count => integer() | nil,
          :company_vendor => boolean() | nil,
          :legal_name => String.t() | nil,
          :parent => Procore.Model.ExtendedView2Parent.t() | nil,
          :project_ids => [integer()] | nil,
          :standard_cost_codes =>
            [Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfStandardCostCodesInner.t()]
            | nil,
          :trades => [Procore.Model.Trade.t()] | nil,
          :business => Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBusiness.t() | nil,
          :contract_signer =>
            Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfContractSigner.t() | nil,
          :country_name => String.t() | nil,
          :state_name => String.t() | nil,
          :invoice_contacts =>
            [Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfInvoiceContactsInner.t()]
            | nil,
          :active_users_count => integer() | nil,
          :bids_count => integer() | nil,
          :open_bids_count => integer() | nil,
          :projects_count => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:attachments, :list, Procore.Model.NormalViewAttachmentsInner)
    |> Deserializer.deserialize(
      :business_register,
      :struct,
      Procore.Model.NormalViewBusinessRegister
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:primary_contact, :struct, Procore.Model.NormalViewPrimaryContact)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:vendor_group, :struct, Procore.Model.NormalViewVendorGroup)
    |> Deserializer.deserialize(
      :bidding,
      :struct,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBidding
    )
    |> Deserializer.deserialize(
      :bidding_distribution,
      :list,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBiddingDistributionInner
    )
    |> Deserializer.deserialize(:parent, :struct, Procore.Model.ExtendedView2Parent)
    |> Deserializer.deserialize(
      :standard_cost_codes,
      :list,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfStandardCostCodesInner
    )
    |> Deserializer.deserialize(:trades, :list, Procore.Model.Trade)
    |> Deserializer.deserialize(
      :business,
      :struct,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfBusiness
    )
    |> Deserializer.deserialize(
      :contract_signer,
      :struct,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfContractSigner
    )
    |> Deserializer.deserialize(
      :invoice_contacts,
      :list,
      Procore.Model.RestV10VendorsIdGet200ResponseOneOf1AllOfInvoiceContactsInner
    )
  end
end