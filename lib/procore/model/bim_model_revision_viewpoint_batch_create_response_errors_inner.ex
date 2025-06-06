# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BimModelRevisionViewpointBatchCreateResponseErrorsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :bim_model_revision_id,
    :bim_viewpoint_id,
    :primary,
    :errors
  ]

  @type t :: %__MODULE__{
          :bim_model_revision_id => integer(),
          :bim_viewpoint_id => integer(),
          :primary => boolean() | nil,
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
