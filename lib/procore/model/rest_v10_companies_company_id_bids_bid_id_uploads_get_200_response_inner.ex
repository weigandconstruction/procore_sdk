# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdBidsBidIdUploadsGet200ResponseInner do
  @moduledoc """
  Bid Upload
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :name,
    :expired,
    :links,
    :id,
    :uuid,
    :url,
    :fields
  ]

  @type t :: %__MODULE__{
          :created_at => DateTime.t() | nil,
          :name => String.t() | nil,
          :expired => boolean() | nil,
          :links =>
            Procore.Model.RestV10CompaniesCompanyIdBidsBidIdUploadsGet200ResponseInnerLinks.t()
            | nil,
          :id => integer() | nil,
          :uuid => String.t() | nil,
          :url => String.t() | nil,
          :fields =>
            Procore.Model.RestV10CompaniesCompanyIdBidsBidIdUploadsGet200ResponseInnerFields.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :links,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdBidsBidIdUploadsGet200ResponseInnerLinks
    )
    |> Deserializer.deserialize(
      :fields,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdBidsBidIdUploadsGet200ResponseInnerFields
    )
  end
end