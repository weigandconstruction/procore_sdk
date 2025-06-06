# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CoordinationIssueSyncResponseErrorsInnerAllOfViewpointsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :snapshot_upload_uuid,
    :snapshot,
    :name,
    :camera_data,
    :redlines_data,
    :sections_data
  ]

  @type t :: %__MODULE__{
          :snapshot_upload_uuid => String.t(),
          :snapshot => String.t() | nil,
          :name => String.t() | nil,
          :camera_data => String.t(),
          :redlines_data => String.t() | nil,
          :sections_data => String.t() | nil
        }

  def decode(value) do
    value
  end
end
