require 'spec_helper'

describe 'fixerio api' do 

  before(:each) do 
    @api_key = ENV['FIXER_API_KEY']
    # puts @api_key
    @fixer_data_response = 
    ParseJson.new(HTTParty::get("https://pokeapi.co/api/v2/pokemon/mew/").body).json_data
  end

  it 'should be a hash' do 
    expect(@fixer_data_response).to be_kind_of(Hash)
  end

# ----------------------------------------------------------------------------------------------------------

  it "Name should be mew" do
    expect(@fixer_data_response["name"]).to eq "mew"
  end
 
  it "should have an id of 151" do
    expect(@fixer_data_response["id"]).to eq 151
  end


  it "should be pyscic" do 
    expect(@fixer_data_response["abilities"][0]["ability"]["name"]).to eq "synchronize"
  end
 
  

end


