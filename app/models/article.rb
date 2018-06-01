class Article < ApplicationRecord
has_many :image
has_many :post
has_many :tag

accepts_nested_attributes_for :tag, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true


validates :body, :title , length: { minimum: 1, maximum: 500 }




def get_body
    self.body
end



end
