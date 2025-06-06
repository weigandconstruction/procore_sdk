# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdContractsContractIdInvoiceConfigurationGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :separate_billing_for_stored_materials,
    :stored_materials_billing_method,
    :contract_id,
    :project_id,
    :company_id,
    :ssr_enabled,
    :move_materials_to_previous_work_completed,
    :retainage_rule_set
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :separate_billing_for_stored_materials => boolean() | nil,
          :stored_materials_billing_method => String.t() | nil,
          :contract_id => integer() | nil,
          :project_id => integer() | nil,
          :company_id => integer() | nil,
          :ssr_enabled => boolean() | nil,
          :move_materials_to_previous_work_completed => boolean() | nil,
          :retainage_rule_set =>
            Procore.Model.RestV10ProjectsProjectIdContractsContractIdInvoiceConfigurationGet200ResponseRetainageRuleSet.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :retainage_rule_set,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdContractsContractIdInvoiceConfigurationGet200ResponseRetainageRuleSet
    )
  end
end
