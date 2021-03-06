require 'spec_helper'

describe Ruigi::Word do
  context 'When made a model' do
    let(:str) { 'I have a pretty pen but I want another one' }
    let(:document) { Ruigi::Document.new(str.split) }

    it 'is counted correctly' do
      expect(document.words['I'].count).to eq(2)
      expect(document.words['I'].tf).to eq(0.2)
    end
  end
end
