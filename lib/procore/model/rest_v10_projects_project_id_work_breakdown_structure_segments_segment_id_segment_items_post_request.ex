# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWorkBreakdownStructureSegmentsSegmentIdSegmentItemsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :name,
    :parent_id,
    :sub_job_id
  ]

  @type t :: %__MODULE__{
          :code => String.t(),
          :name => String.t(),
          :parent_id => integer() | nil,
          :sub_job_id => integer() | nil
        }

  def decode(value) do
    value
  end
end