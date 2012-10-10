class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
attr_accessible :dada
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id
  # attr_accessible :title, :body
  has_many :accounts, :dependent => :destroy
  belongs_to :role
  before_create :create_account

  validates :email, :presence => true
  def name
    self.dada
  end

  private
    def create_account
      self.accounts << Account.new(login: "blablabla")  
    end
end
