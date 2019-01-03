# frozen_string_literal: true

# == Schema Information
#
# Table name: scheduled_statuses
#
#  id           :bigint(8)        not null, primary key
#  account_id   :bigint(8)
#  scheduled_at :datetime
#  params       :jsonb
#

class ScheduledStatus < ApplicationRecord
  belongs_to :account, inverse_of: :scheduled_statuses
  has_many :media_attachments, inverse_of: :scheduled_status, dependent: :destroy
end
