# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10SubmittalApproversIdPatchRequestSubmittalApproverAssociatedAttachmentsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :attachment_id,
    :attachment_source_id,
    :attachment_source_type
  ]

  @type t :: %__MODULE__{
          :attachment_id => integer(),
          :attachment_source_id => integer(),
          :attachment_source_type => String.t()
        }

  def decode(value) do
    value
  end
end
