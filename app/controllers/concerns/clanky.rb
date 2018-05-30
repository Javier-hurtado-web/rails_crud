module Clanky
    extend ActiveSupport::Concern
   #zavolám staticky
   #vytvářím jen na zkoušku, nedává  to jinak žádný smysl :) 
   def self.vsechny_clanky
        Article.all
   end
    
end