# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BimLevelBatchCreateResponseErrorsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :elevation,
    :bim_file_id,
    :location_id,
    :errors
  ]

  @type t :: %__MODULE__{
          :elevation => float(),
          :bim_file_id => integer(),
          :location_id => integer(),
          :errors =>
            Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200ResponseErrorsInnerAllOfErrors.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :errors,
      :struct,
      Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200ResponseErrorsInnerAllOfErrors
    )
  end
end
