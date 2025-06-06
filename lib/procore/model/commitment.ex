# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Commitment do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :number,
    :status,
    :description,
    :executed,
    :delivery_date,
    :created_at,
    :private,
    :vendor
  ]

  @type t :: %__MODULE__{
          :id => float() | nil,
          :title => String.t() | nil,
          :number => String.t() | nil,
          :status => String.t() | nil,
          :description => String.t() | nil,
          :executed => boolean() | nil,
          :delivery_date => Date.t() | nil,
          :created_at => DateTime.t() | nil,
          :private => boolean() | nil,
          :vendor =>
            Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:delivery_date, :date, nil)
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :vendor,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor
    )
  end
end
