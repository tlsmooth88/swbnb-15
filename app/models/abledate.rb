class Abledate < ActiveRecord::Base
  def search
    scoped = Abledate.scoped
    @products = @products.where(t[:code].matches("%#{code}%")) if code.present?
    scoped
  end
end
