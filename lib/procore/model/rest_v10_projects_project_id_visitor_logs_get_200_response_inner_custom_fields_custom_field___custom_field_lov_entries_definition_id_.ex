# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntriesDefinitionId do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data_type,
    :value
  ]

  @type t :: %__MODULE__{
          :data_type => String.t() | nil,
          :value =>
            [
              Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntriesDefinitionIdValueInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :value,
      :list,
      Procore.Model.RestV10ProjectsProjectIdVisitorLogsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntriesDefinitionIdValueInner
    )
  end
end
