require 'rails_helper'

describe 'request "/"' do
  it 'renders a thinking app\'s message' do
    get '/'
    expect(response.body).to include('Bem vindo a Thinking App')
  end
end
