# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistSpecificationSection do
  @moduledoc """
  Specification Section
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :current_revision_id,
    :description,
    :section,
    :latest_revision_url
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :current_revision_id => integer() | nil,
          :description => String.t() | nil,
          :section => String.t() | nil,
          :latest_revision_url => String.t() | nil
        }

  def decode(value) do
    value
  end
end