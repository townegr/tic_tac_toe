require 'spec_helper'

describe Array do
  context '#all_empty?' do
    it 'returns true if all elements of the Array are empty' do
      expect(["", "", ""].all_empty?).to be_true
    end
    it 'returns false if some of the Array elements are not empty' do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_false
    end
    it 'returns true for an empty Array' do
      expect([].all_empty?).to be_true
    end
  end
  context '#any_empty?' do
    it 'returns true if any of the elements of the Array are empty' do
      expect(["", "X", 1].any_empty?).to be_true
    end
    it 'returns false if none of the elements of the Array are empty' do
      expect(["O", "X", true].any_empty?).to be_false
    end
  end
  context '#none_empty?' do
    it 'returns true if none of the elements of the Array are empty' do
      expect(["0", 1, false].none_empty?).to be_true
    end
    it 'returns false if any of the elements of the Array are empty' do
      expect(["", Object.new, true].none_empty?).to be_false
    end
  end
end
