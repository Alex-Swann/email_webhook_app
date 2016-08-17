describe 'Data List' do

  before :each do
    visit '/'
  end

  it 'shows statistics for the data sent' do
    expect(page).to have_content 'Emails Sent:'
  end
end
