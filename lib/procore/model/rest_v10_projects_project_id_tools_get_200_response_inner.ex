# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdToolsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :engine_name,
    :is_active,
    :position,
    :required,
    :title
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :engine_name => String.t() | nil,
          :is_active => boolean() | nil,
          :position => integer() | nil,
          :required => boolean() | nil,
          :title => String.t() | nil
        }

  def decode(value) do
    value
  end
end