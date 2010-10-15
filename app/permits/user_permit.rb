class UserPermit < Permit::Base
  def initialize(ability, options = {})
    super
  end

  def permit?(user, options = {}) 
    super    
    return if !role_match? user

    can :read, Post
    can :create, Post

  end  
end
