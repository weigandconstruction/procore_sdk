# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerPermissions do
  @moduledoc """
  TBD
  """

  @derive Jason.Encoder
  defstruct [
    :can_update,
    :can_delete
  ]

  @type t :: %__MODULE__{
          :can_update => boolean() | nil,
          :can_delete => boolean() | nil
        }

  def decode(value) do
    value
  end
end