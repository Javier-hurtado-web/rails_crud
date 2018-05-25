class Article < ApplicationRecord
has_many :image
has_many :post
validates :body, :title , length: { minimum: 10, maximum: 50 }

end
