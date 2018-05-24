class Article < ApplicationRecord

has_many :post
validates :body, :title , length: { minimum: 10, maximum: 50 }

end
