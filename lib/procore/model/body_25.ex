# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body25 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :requisition_contract_detail_item
  ]

  @type t :: %__MODULE__{
          :requisition_contract_detail_item => Procore.Model.RequisitionContractDetailItem.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :requisition_contract_detail_item,
      :struct,
      Procore.Model.RequisitionContractDetailItem
    )
  end
end
