class AbledatesController < ApplicationController
  def index
    @abledate_form = Abledate.new params[:abledate_form]
    @abledates = @abledate_form.search
  end
end
