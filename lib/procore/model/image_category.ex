# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ImageCategory do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :count,
    :cover_photo,
    :created_at,
    :links,
    :name,
    :private,
    :updated_at,
    :position
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :count => integer() | nil,
          :cover_photo => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :links => Procore.Model.ImageCategoryLinks.t() | nil,
          :name => String.t() | nil,
          :private => boolean() | nil,
          :updated_at => DateTime.t() | nil,
          :position => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:links, :struct, Procore.Model.ImageCategoryLinks)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end