class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    type_regex = /\A(?:(chinese)|(italian)|(japanese)|(french)|(belgian))\Z/

    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :category, format: { with: type_regex }
    validates :phone_number, presence: true
end

