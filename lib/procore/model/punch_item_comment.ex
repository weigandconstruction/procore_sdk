# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.PunchItemComment do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :attachments,
    :body,
    :created_at,
    :created_by,
    :type
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :attachments => [Procore.Model.PunchItemCommentAttachmentsInner.t()] | nil,
          :body => String.t() | nil,
          :created_at => String.t() | nil,
          :created_by => Procore.Model.PunchItemCommentCreator.t() | nil,
          :type => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.PunchItemCommentAttachmentsInner
    )
    |> Deserializer.deserialize(:created_by, :struct, Procore.Model.PunchItemCommentCreator)
  end
end