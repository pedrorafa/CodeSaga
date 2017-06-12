require 'rails_helper'

describe Opinion do
  it 'persists a new opinion' do
    body = "Rails is awesome!"
    opinion = Opinion.create(body: body)

    expect(opinion).to be_persisted
    expect(opinion.body).to eq body
  end
end
