class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :private_mail
end
