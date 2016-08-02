require 'rails_helper'

describe PathFinder do
  describe '.find_path' do
    let(:origin) { 'Disneyland' }
    let(:destination) { 'Universal Studios Hollywood' }
    let(:google_api_key) { ENV['GOOGLE_API_KEY'] }

    it 'should find a path from origin to destination' do
      path = described_class.find_path(origin, destination)
      expect(path).not_to be_nil
    end
  end
end
