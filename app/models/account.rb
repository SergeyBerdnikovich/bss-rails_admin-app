class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :private_mail, :user_id, :tara, :login
  has_paper_trail

  def name
    self.login
  end
end
