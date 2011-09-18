class Post < ActiveRecord::Base
  attr_accessible :title, :content, :price, :city, :state
  
  belongs_to :user
  
  validates_presence_of :title, :content:, :price, :city, :state;
  validates :title, :length => { :maximum => 140 }
  validates :content, :length => { :maximum => 500 }
  validates_format_of :price, with => /^\d+(\.\d{0,2})?$/
  validates :state, :length => { :maximum => 2 }
end
