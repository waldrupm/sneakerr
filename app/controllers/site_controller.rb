class SiteController < AuthedController
  before_action :set_count, only: [:index]

  def index
    @count = session[:count]
  end

  def add
    @count = session[:count] += 1
  end

  def remove
    @count = session[:count] -= 1 unless session[:count] == 0
  end

  private

  def set_count
    session[:count] ||= 0
  end
end
