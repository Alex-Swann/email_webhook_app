describe 'Data List' do

  before :each do
    visit '/'
  end

  it 'shows statistics for emails sent' do
    expect(page).to have_content 'Emails sent'
  end

  it 'shows statistics for emails opened' do
    expect(page).to have_content 'Emails opened'
  end

  it 'shows statistics for emails clicked' do
    expect(page).to have_content 'No. of clicks'
  end

  it 'shows statistics for open rate of emails' do
    expect(page).to have_content 'Open rate per email'
  end

  it 'shows statistics for click rate of emails' do
    expect(page).to have_content 'Click rate per email'
  end
end
