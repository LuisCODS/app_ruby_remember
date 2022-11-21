class Annotation < ApplicationRecord

  # tables relations
  belongs_to :friend
  # validations
  validates :body,      presence: true
  validates :friend_id, presence: true

end
