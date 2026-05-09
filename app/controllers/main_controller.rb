class MainController < ApplicationController
  def index
    @services = Service.all
    @works = Work.last(3)
    @page_title = "IDEA"
    @contact = Contact.new
  end
end
