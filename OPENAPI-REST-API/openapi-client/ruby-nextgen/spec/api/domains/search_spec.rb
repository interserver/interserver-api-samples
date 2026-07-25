# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OpenapiClient::Api::Domains::Search do
  let(:client) { OpenapiClient::Client.new(base_url: 'https://my.interserver.net/apiv2') }

  it 'is reachable and shares the client connection' do
    api = described_class.new(client.connection)
    expect(api).to be_a(described_class)
  end
end
