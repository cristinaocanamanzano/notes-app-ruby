require 'notebook'

describe Notebook do

  subject(:notebook) { described_class.new }

  describe "#add_note" do
    it "adds a note to the saved notes property array" do
      notebook.add_note('My first note', 'This is my first note')
      expect(notebook.saved_notes).to eq [{title: 'My first note', body: 'This is my first note'}]
    end

    it "confirms that the note have been saved" do
      expect(notebook.add_note('My first note', 'This is my first note')).to eq 'Note saved!'
    end
  end
end
