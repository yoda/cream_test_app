class AnyPermit < Permit::Base
  def initialize(ability, options = {})
    super
  end

  def permit?(user, options = {}) 
    super    
    return if !role_match? user

    can :read, Post

  end  
end
