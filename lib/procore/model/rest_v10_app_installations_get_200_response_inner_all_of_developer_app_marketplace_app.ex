# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceApp do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :about,
    :approval_state,
    :built_by,
    :costs_money,
    :created_at,
    :description,
    :feature_bullets,
    :helpful_links,
    :how_it_works,
    :live,
    :pictures,
    :public_name,
    :requirements,
    :small_logo_url,
    :state,
    :support_email,
    :updated_at,
    :version,
    :videos,
    :website_link
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :about => String.t() | nil,
          :approval_state => String.t() | nil,
          :built_by => String.t() | nil,
          :costs_money => boolean() | nil,
          :created_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :feature_bullets => [String.t()] | nil,
          :helpful_links =>
            [
              Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppHelpfulLinksInner.t()
            ]
            | nil,
          :how_it_works => String.t() | nil,
          :live => boolean() | nil,
          :pictures =>
            [
              Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppPicturesInner.t()
            ]
            | nil,
          :public_name => String.t() | nil,
          :requirements => [String.t()] | nil,
          :small_logo_url => String.t() | nil,
          :state => String.t() | nil,
          :support_email => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :version => integer() | nil,
          :videos =>
            [
              Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppVideosInner.t()
            ]
            | nil,
          :website_link =>
            Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppWebsiteLink.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :helpful_links,
      :list,
      Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppHelpfulLinksInner
    )
    |> Deserializer.deserialize(
      :pictures,
      :list,
      Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppPicturesInner
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :videos,
      :list,
      Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppVideosInner
    )
    |> Deserializer.deserialize(
      :website_link,
      :struct,
      Procore.Model.RestV10AppInstallationsGet200ResponseInnerAllOfDeveloperAppMarketplaceAppWebsiteLink
    )
  end
end