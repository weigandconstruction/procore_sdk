# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalLogsIdCloseAndDistributePatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :submittal_log_status_id,
    :submittal_description,
    :message,
    :prostore_file_ids,
    :recipient_ids,
    :selected_approvers
  ]

  @type t :: %__MODULE__{
          :submittal_log_status_id => integer() | nil,
          :submittal_description => String.t() | nil,
          :message => String.t() | nil,
          :prostore_file_ids => [integer()] | nil,
          :recipient_ids => [integer()] | nil,
          :selected_approvers =>
            [
              Procore.Model.RestV10ProjectsProjectIdSubmittalLogsIdCloseAndDistributePatchRequestSelectedApproversInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :selected_approvers,
      :list,
      Procore.Model.RestV10ProjectsProjectIdSubmittalLogsIdCloseAndDistributePatchRequestSelectedApproversInner
    )
  end
end