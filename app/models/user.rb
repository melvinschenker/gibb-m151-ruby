class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    validates_presence_of :name
    validates_length_of :name, :maximum => 50

  has_many :posts, dependent: :destroy
  has_many :likes


end
