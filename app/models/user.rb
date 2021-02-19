require 'open-uri'
require 'net/http'
 require 'json'


class User < ApplicationRecord
  has_many :user_foods
  has_many :foods, through: :user_foods

  has_secure_password

  validates :email, :password, :name, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 8}


end
