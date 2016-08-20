require_relative '../models/data_organiser.rb'

class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  def index
    @data = Datum.all
    @organiser = DataOrganiser.new(@data)
    @organiser.organise
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
