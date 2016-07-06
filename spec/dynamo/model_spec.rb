require 'spec_helper'

describe Dynamo::Model do
  it 'has a version number' do
    expect(Dynamo::Model::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
