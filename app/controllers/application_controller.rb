class ApplicationController < ActionController::Base
  before_action :params_init
  before_action :set_locale

  private

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  private

  def default_url_options
    { locale: I18n.locale }
  end
  def params_init
    @works = Work.all
    @about = About.all
    @emails = Email.all
    @phones = Phone.all
  end
end
