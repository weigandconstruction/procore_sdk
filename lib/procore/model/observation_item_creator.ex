# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ObservationItemCreator do
  @moduledoc """
  User that created the Observation Item
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :login,
    :vendor
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :login => String.t() | nil,
          :vendor => Procore.Model.ObservationItemCreatorSCompany.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:vendor, :struct, Procore.Model.ObservationItemCreatorSCompany)
  end
end