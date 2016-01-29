class Event < ActiveRecord::Base
    belongs_to :user
    validates :user_id, presence: true
    has_many :yoyakus
    has_many :reservations
end
