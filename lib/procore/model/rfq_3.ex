# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Rfq3 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :assigned_id,
    :change_event_event_id,
    :cost_code_id,
    :description,
    :due_date,
    :estimated_amount,
    :estimated_schedule_impact,
    :estimated_status,
    :location_id,
    :number,
    :original_quote,
    :private,
    :spec_section_description,
    :spec_section_number,
    :specification_section_id,
    :status,
    :title,
    :prostore_file_ids
  ]

  @type t :: %__MODULE__{
          :assigned_id => integer() | nil,
          :change_event_event_id => integer() | nil,
          :cost_code_id => integer() | nil,
          :description => String.t() | nil,
          :due_date => Date.t() | nil,
          :estimated_amount => float() | nil,
          :estimated_schedule_impact => integer() | nil,
          :estimated_status => String.t() | nil,
          :location_id => integer() | nil,
          :number => String.t() | nil,
          :original_quote => float() | nil,
          :private => boolean() | nil,
          :spec_section_description => String.t() | nil,
          :spec_section_number => String.t() | nil,
          :specification_section_id => integer() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :prostore_file_ids => [integer()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:due_date, :date, nil)
  end
end
