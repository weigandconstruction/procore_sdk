# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.UploadSegmentsInner do
  @moduledoc """
  Upload segment
  """

  @derive Jason.Encoder
  defstruct [
    :size,
    :sha256,
    :md5,
    :etag
  ]

  @type t :: %__MODULE__{
          :size => integer(),
          :sha256 => String.t(),
          :md5 => String.t() | nil,
          :etag => String.t() | nil
        }

  def decode(value) do
    value
  end
end
