class Post < ActiveRecord::Base
  attr_accessible :title, :content, :price, :city, :state, :address, :zip
  
  belongs_to :user
  
  validates_presence_of :title, :content, :price, :city, :state, :zip;
  validates :title, :length => { :maximum => 140 }
  validates :content, :length => { :maximum => 5000 }
  validates_format_of :price, :with => /^\d+(\.\d{0,2})?$/
  validates :state, :length => { :maximum => 2 }
  validates :zip, :length => { :is => 5 }
  validates_format_of :zip, :with => /^\d+{5}$/
  
  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
