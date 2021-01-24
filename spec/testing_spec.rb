require_relative '../lib/utils.rb'

describe 'random_select' do
  it 'selects a random joke in the array' do
    selection = random_select
    expect(selection).to eql(selection)
  end
end
