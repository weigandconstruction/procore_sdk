# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV13CompaniesCompanyIdUsersBulkRemovePost200Response do
  @moduledoc """
  One key for each user ID passed in
  """

  @derive Jason.Encoder
  defstruct [
    :userId
  ]

  @type t :: %__MODULE__{
          :userId =>
            Procore.Model.RestV13CompaniesCompanyIdUsersBulkRemovePost200ResponseUserId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :userId,
      :struct,
      Procore.Model.RestV13CompaniesCompanyIdUsersBulkRemovePost200ResponseUserId
    )
  end
end