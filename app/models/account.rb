class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :private_mail, :user_id
  has_paper_trail
end
