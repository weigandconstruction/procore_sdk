# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body138AlternatesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :position,
    :header,
    :bid_form_items
  ]

  @type t :: %__MODULE__{
          :title => String.t() | nil,
          :position => integer() | nil,
          :header => boolean() | nil,
          :bid_form_items => [Procore.Model.Body138AlternatesInnerBidFormItemsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bid_form_items,
      :list,
      Procore.Model.Body138AlternatesInnerBidFormItemsInner
    )
  end
end