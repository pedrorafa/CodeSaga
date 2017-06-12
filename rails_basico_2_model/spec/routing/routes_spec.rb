require 'rails_helper'

describe "routes for Thinking App" do
  it 'routes "/" to index action of welcome controller' do
    expect(get('/')).to route_to("welcome#index")
  end
end
