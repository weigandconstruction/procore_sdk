# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimeAndMaterialEntry1 do
  @moduledoc """
  Time and Material Entry Object
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :reference_number,
    :description,
    :status,
    :private,
    :number,
    :customer_signature_id,
    :company_signature_id,
    :company_signee_party_id,
    :customer_signee_party_id,
    :work_performed_on_date,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :reference_number => String.t() | nil,
          :description => String.t() | nil,
          :status => String.t() | nil,
          :private => boolean() | nil,
          :number => integer() | nil,
          :customer_signature_id => integer() | nil,
          :company_signature_id => integer() | nil,
          :company_signee_party_id => integer() | nil,
          :customer_signee_party_id => integer() | nil,
          :work_performed_on_date => String.t() | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end