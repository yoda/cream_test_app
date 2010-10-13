class GuestPermit < Permit::Base
  def initialize(ability)
    super
  end

  def permit?(user, request=nil) 
    super
        
    licenses :guest
  end  
end
