# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdBidPackagesGet200ResponseBidPackagesInnerLinks do
  @moduledoc """
  Links that can be used by Frontend
  """

  @derive Jason.Encoder
  defstruct [
    :self,
    :bid,
    :bid_pdf,
    :bid_list,
    :emails,
    :addendums,
    :files
  ]

  @type t :: %__MODULE__{
          :self => String.t() | nil,
          :bid => String.t() | nil,
          :bid_pdf => String.t() | nil,
          :bid_list => String.t() | nil,
          :emails => String.t() | nil,
          :addendums => String.t() | nil,
          :files => String.t() | nil
        }

  def decode(value) do
    value
  end
end
