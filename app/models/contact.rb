
class Contact < ActiveRecord::Base
  
    validates :description, :presence => true
    validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
    validates :name, :presence => true

end