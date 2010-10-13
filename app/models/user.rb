use_roles_strategy :many_roles
class User
  include Mongoid::Document
  include Roles::Mongoid 
  strategy :many_roles, :default
  role_class :role

  valid_roles_are :admin, :guest
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

end
