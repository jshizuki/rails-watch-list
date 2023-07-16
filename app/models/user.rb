class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  self.table_name = 'wlist_users'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
