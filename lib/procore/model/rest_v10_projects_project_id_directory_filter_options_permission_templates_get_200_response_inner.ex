# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDirectoryFilterOptionsPermissionTemplatesGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :filter_value,
    :label
  ]

  @type t :: %__MODULE__{
          :filter_value => integer() | nil,
          :label => String.t() | nil
        }

  def decode(value) do
    value
  end
end