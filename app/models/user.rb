class User < ActiveRecord::Base
  require 'digest/md5'
  attr_accessible :email, :first_name, :last_name, :password, :user_type

  #before_save :encrypt_password
  validates :first_name,
  	:presence => TRUE,
  	:length => {
  		:minimum => 2,
  		:allow_blank => TRUE
  	}
  validates :last_name,
  	:presence => TRUE,
  	:length => {
  		:minimum => 2,
  		:allow_blank => TRUE
  	}

  validates :password,
  	:presence => TRUE,
  	:length => {
  		:minimum => 6,
  		:allow_blank => TRUE
  	},
  	:confirmation => TRUE

  validates :email,
  	:presence => TRUE,
  	:uniqueness => TRUE

  # def encrypt_password
  # 	self.password = Digest::MD5.hexdigest(password)
  # end

  def self.validate_login(email,password)
    user1 = User.find_by_email_and_password(email,password)
    if user1
      user1
    else
      nil
    end
  end

end
