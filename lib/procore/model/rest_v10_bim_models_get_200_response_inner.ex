# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BimModelsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :auto_publish,
    :project_id,
    :revisions_count,
    :web_url,
    :created_at,
    :updated_at,
    :current_revision_id,
    :current_revision
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :title => String.t() | nil,
          :auto_publish => boolean() | nil,
          :project_id => integer() | nil,
          :revisions_count => float() | nil,
          :web_url => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :current_revision_id => integer() | nil,
          :current_revision =>
            Procore.Model.RestV10BimModelsGet200ResponseInnerOneOf1CurrentRevision.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :current_revision,
      :struct,
      Procore.Model.RestV10BimModelsGet200ResponseInnerOneOf1CurrentRevision
    )
  end
end