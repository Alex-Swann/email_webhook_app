class DataOrganiser
  attr_reader :send, :opened, :click

  def initialize data
    @send, @opened, @click = 0, 0, 0
    @data = data
  end

  def organise
    @data.each do |datum|
      @send += 1 if datum.event == 'send'
      @opened += 1 if datum.event == 'open'
      @click += 1 if datum.event == 'click'
    end
  end

  def percentage stat
    (stat/@data.length.to_f).round(2) * 100
  end
end
