class UserAdminLicense < License::Base
  def initialize name
    super
  end

  def enforce!
    can(:manage, User)
    can(:read, Post)
    can(:create, Post)
  end
end

class BloggingLicense < License::Base
  def initialize name
    super
  end
  
  def enforce!
    can(:read, Post)
    can(:create, Post)
    owns(user, Post)
  end
end

class GuestLicense < License::Base
  def initialize name
    super
  end
  
  def enforce!
    can(:read, Post)
  end
end
