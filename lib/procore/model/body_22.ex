# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body22 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :commitment_id,
    :attachments,
    :requisition
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :commitment_id => integer(),
          :attachments => [String.t()] | nil,
          :requisition => Procore.Model.RequisitionSubcontractorInvoice2.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :requisition,
      :struct,
      Procore.Model.RequisitionSubcontractorInvoice2
    )
  end
end
