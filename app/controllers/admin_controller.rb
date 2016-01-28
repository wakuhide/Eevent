class AdminController

  def show

    @articles = current_user.articles

  end

end
