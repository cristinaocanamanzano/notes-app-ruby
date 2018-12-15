require 'note'

describe Note do
  subject(:note) { described_class.new('My note', 'This is my note') }

  describe 'title' do
    it 'returns the note title' do
      expect(note.title).to eq 'My note'
    end
  end

  describe 'body' do
    it 'returns the note body' do
      expect(note.body).to eq 'This is my note'
    end
  end
end
