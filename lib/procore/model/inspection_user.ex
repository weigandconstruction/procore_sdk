# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.InspectionUser do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :login,
    :name,
    :vendor,
    :potential_assignee,
    :potential_point_of_contact,
    :potential_distribution_member,
    :default_distribution_member,
    :custom_fields
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :login => String.t() | nil,
          :name => String.t() | nil,
          :vendor => Procore.Model.Compact.t() | nil,
          :potential_assignee => boolean() | nil,
          :potential_point_of_contact => boolean() | nil,
          :potential_distribution_member => boolean() | nil,
          :default_distribution_member => boolean() | nil,
          :custom_fields => Procore.Model.InspectionUserCustomFields.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:vendor, :struct, Procore.Model.Compact)
    |> Deserializer.deserialize(:custom_fields, :struct, Procore.Model.InspectionUserCustomFields)
  end
end
