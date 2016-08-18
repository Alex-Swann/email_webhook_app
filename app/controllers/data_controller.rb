class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  # GET /data
  # GET /data.json
  def index
    @data = Datum.all
  end

  def create
    if request.headers['Content-Type'] == 'text/json'
      data = JSON.parse(request.body.read)
      @datum = Datum.create(
                  address: data['Address'],
                  email_type: data['EmailType'],
                  event: data['Event'],
                  timestamp: Time.at(data['Timestamp'])
                  )
    end

    render nothing: true
  end
  
end
