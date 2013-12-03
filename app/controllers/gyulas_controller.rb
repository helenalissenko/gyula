class GyulasController < ApplicationController
  require 'uri'
  # GET /gyulas
  # GET /gyulas.json
  def index
    @gyulas = Gyula.all
  end

  def speak
    if params[:q].present?
      googleuri=CGI.escape(URI.encode('http://translate.google.com/translate_tts?tl='+params[:language]+'&q='+params[:q]))
      Curl::Easy.http_get('http://api.wizz.cc/?sn=001D921058F8&token=4f4a80beb5a26185b28f6c773a862fcc&server=pixel&urlList='+googleuri)
    end
    render nothing: true
  end
  
end
