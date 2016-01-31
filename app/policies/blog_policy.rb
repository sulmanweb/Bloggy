class BlogPolicy
  attr_reader :current_user, :blog

  def initialize(current_user, blog)
    @current_user = current_user
    @blog = blog
  end

  # Blog can be edited, update or destroyed if the current_user is the creator of the blog
  def edit?
    @blog.user == current_user
  end

  def destroy?
    @blog.user == current_user
  end

  def update?
    @blog.user == current_user
  end

end
