# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ItemItemAttachmentsAttributesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :prostore_file_id,
    :created_by_id,
    :item_id,
    :from_mobile
  ]

  @type t :: %__MODULE__{
          :prostore_file_id => integer() | nil,
          :created_by_id => integer() | nil,
          :item_id => integer() | nil,
          :from_mobile => boolean() | nil
        }

  def decode(value) do
    value
  end
end