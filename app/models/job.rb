# frozen_string_literal: true

class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  extend FriendlyId
  friendly_id :slug_jobs, use: :slugged

  def slug_jobs
    [
      :title,
      %i[title company]
    ]
  end
end
