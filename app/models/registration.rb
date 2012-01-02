class Registration < ActiveRecord::Base
  
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :post, :foreign_key => "post_id"
  
end
