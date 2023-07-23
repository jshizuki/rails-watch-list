class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Note that comments refer to the code before pulling into single-db
  # self.table_name = 'wlist_users'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
