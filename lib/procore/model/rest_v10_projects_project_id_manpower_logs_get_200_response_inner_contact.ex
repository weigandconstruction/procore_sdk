# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdManpowerLogsGet200ResponseInnerContact do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :business_phone,
    :business_phone_extension,
    :email,
    :fax_number,
    :job_title,
    :login_information_id,
    :mobile_phone,
    :name,
    :vendor_name
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :business_phone => String.t() | nil,
          :business_phone_extension => integer() | nil,
          :email => String.t() | nil,
          :fax_number => String.t() | nil,
          :job_title => String.t() | nil,
          :login_information_id => integer() | nil,
          :mobile_phone => String.t() | nil,
          :name => String.t() | nil,
          :vendor_name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
