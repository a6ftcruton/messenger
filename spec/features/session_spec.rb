require 'rails_helper'

describe 'User Login' do

  it 'visits login page from site root' do
    visit login_path

    expect(current_path).to eq login_path
  end

  private
   
end
