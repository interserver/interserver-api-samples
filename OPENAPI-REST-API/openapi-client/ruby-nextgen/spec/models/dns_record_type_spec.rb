# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OpenapiClient::Models::DnsRecordType do
  it 'lists its known values' do
    expect(described_class.all).not_to be_empty
  end
end
