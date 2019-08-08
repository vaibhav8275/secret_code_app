class SecretCode < ApplicationRecord
  belongs_to :user, optional: true

  validates :user, uniqueness: true, allow_nil: true

  after_initialize :set_default_token, :if => :new_record?

  def set_default_token
  	self.secret_code ||= SecureRandom.base58(24)
  end
end
