# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10MeetingCategoriesGet200ResponseInner do
  @moduledoc """
  Meeting category
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :position,
    :created_by
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :title => String.t() | nil,
          :position => integer() | nil,
          :created_by => Procore.Model.PunchItem6CreatedBy.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_by, :struct, Procore.Model.PunchItem6CreatedBy)
  end
end