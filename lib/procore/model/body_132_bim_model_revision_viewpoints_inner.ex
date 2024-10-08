# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body132BimModelRevisionViewpointsInner do
  @moduledoc """
  BIM Model Revision Viewpoint
  """

  @derive Jason.Encoder
  defstruct [
    :bim_model_revision_id,
    :bim_viewpoint_id,
    :primary
  ]

  @type t :: %__MODULE__{
          :bim_model_revision_id => integer(),
          :bim_viewpoint_id => integer(),
          :primary => boolean() | nil
        }

  def decode(value) do
    value
  end
end
