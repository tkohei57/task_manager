class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tasks
  has_many :comments

  validates :name, presence: true
  validates :department, presence: true
  validates :grade, presence: true
  validates :club, presence: true
  validates :subject, presence: true
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数字混合の6文字以上で設定してください' }
end
