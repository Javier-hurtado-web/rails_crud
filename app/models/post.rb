class Post < ApplicationRecord
	belongs_to :article

    validates :text, presence: true, length: { minimum: 10, maximum: 50 }

end
