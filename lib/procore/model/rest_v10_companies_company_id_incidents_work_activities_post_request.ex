# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdIncidentsWorkActivitiesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :work_activity
  ]

  @type t :: %__MODULE__{
          :work_activity =>
            Procore.Model.RestV10CompaniesCompanyIdIncidentsWorkActivitiesPostRequestWorkActivity.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :work_activity,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdIncidentsWorkActivitiesPostRequestWorkActivity
    )
  end
end