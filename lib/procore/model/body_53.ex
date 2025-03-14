# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body53 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :payment_application_markup_line_item
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :payment_application_markup_line_item =>
            Procore.Model.PaymentApplicationOwnerInvoiceMarkupLineItem.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :payment_application_markup_line_item,
      :struct,
      Procore.Model.PaymentApplicationOwnerInvoiceMarkupLineItem
    )
  end
end
