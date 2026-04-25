class WorksController < ApplicationController
  def index
    @works = Work.all.order(updated_at: :asc)
    @page_title = "IDEA - Мои работы"
  end

  def show
    @work = Work.find(params[:id])
    @page_title = "IDEA" + " - " + @work.title
  end
end
