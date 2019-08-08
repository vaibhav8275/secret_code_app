class User < ApplicationRecord
	attr_accessor :secret_cod
	enum role: [:user, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email, uniqueness: true
  validate :validate_secret_cod, on: :create
  
  after_initialize :set_default_role, :if => :new_record?
  before_create :assign_secret_code, :if => :new_record?

  has_one :secret_code
  accepts_nested_attributes_for :secret_code

 
  def validate_secret_cod
    errors.add(:secret_cod, "is not valid.") unless self.secret_cod == 'foobar'
  end

  

  private
  def set_default_role
    self.role ||= :user
  end

  def assign_secret_code
    self.secret_code = SecretCode.find_by(:user_id => nil)
  end
end
