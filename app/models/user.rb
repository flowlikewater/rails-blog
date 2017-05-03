class User < ActiveRecord::Base
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: {minimum: 3, maximum: 25}
  # http://guides.rubyonrails.org/active_record_validations.html#validation-helpers
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
end
