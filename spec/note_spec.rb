require 'note'

describe Note do
  subject(:note) { described_class.new('My note', 'This is my note') }

  describe '#show_title' do
    it 'returns the note title' do
      expect(note.show_title).to eq 'My note'
    end
  end

  describe '#show_content' do
    it 'returns the note body' do
      expect(note.show_content).to eq 'This is my note'
    end
  end
end
