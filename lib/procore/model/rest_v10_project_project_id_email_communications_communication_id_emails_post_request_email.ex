# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectProjectIdEmailCommunicationsCommunicationIdEmailsPostRequestEmail do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :body,
    :prostore_file_ids,
    :distribution_ids,
    :cc_distribution_ids,
    :bcc_distribution_ids
  ]

  @type t :: %__MODULE__{
          :body => String.t() | nil,
          :prostore_file_ids => [integer()] | nil,
          :distribution_ids => [integer()] | nil,
          :cc_distribution_ids => [integer()] | nil,
          :bcc_distribution_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end