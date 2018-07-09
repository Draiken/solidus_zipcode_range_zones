require 'spec_helper'

RSpec.describe SolidusZipcodeRangeZones::ZoneDecorator, type: :model do
  describe 'for_address' do
    let(:address_within_range) { create(:address, zipcode: '80520320') }
    let(:address_outside_range) { create(:address, zipcode: '83001320') }

    let(:zipcode_range) { Spree::ZipcodeRange.new(start: 80_000, end: 82_999) }
    let!(:zone_with_zipcode_ranges) { create(:zone, zipcode_ranges: [zipcode_range]) }

    subject { Spree::Zone.for_address(address) }

    context 'when there is no address' do
      let(:address) { nil }

      it 'returns an empty relation' do
        expect(subject).to eq([])
      end
    end

    context 'when the zipcode is within the range' do
      let(:address) { address_within_range }

      it 'returns the matching zone' do
        expect(subject).to eq([zone_with_zipcode_ranges])
      end
    end

    context 'when the zipcode is outside the range' do
      let(:address) { address_outside_range }

      it 'returns an empty relation' do
        expect(subject).to eq([])
      end
    end
  end
end