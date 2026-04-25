class MainController < ApplicationController
  def index
    @about = About.last
    @services = Service.all
    @works = Work.last(3)
    @page_title = "IDEA"
    @contact = Contact.new
  end
end
