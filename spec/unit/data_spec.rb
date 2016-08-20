describe Datum do

  let!(:data) do
    Datum.create(
          address: 'barney@lostmy.name',
          email_type: 'Shipment',
          event: 'send',
          timestamp: 1471535385
        )
  end

  it 'should contain entry in the database' do
    expect(Datum.first['address']).to eq 'barney@lostmy.name'
  end

end
