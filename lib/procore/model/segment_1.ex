# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Segment1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :project_can_modify_origin_project,
    :project_can_delete_origin_company
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :project_can_modify_origin_project => boolean() | nil,
          :project_can_delete_origin_company => boolean() | nil
        }

  def decode(value) do
    value
  end
end