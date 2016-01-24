class AdminController < ApplicationController
  class AdminController < AuthorizedController

  def show

    @articles = current_user.articles

  end

end
end
