# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CompanyChecklistSectionUpdateBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :section
  ]

  @type t :: %__MODULE__{
          :section => Procore.Model.CompanyChecklistSection.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:section, :struct, Procore.Model.CompanyChecklistSection)
  end
end
