class Post < ApplicationRecord
  belongs_to :member
  validates :body, presence: true, length: { minimum: 1, maximum: 250 }
end
