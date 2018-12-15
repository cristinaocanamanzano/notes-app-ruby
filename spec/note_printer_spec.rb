require 'note_printer'

describe Note_printer do
  subject(:note_printer) { described_class.new }
  let(:first_note) { double :first_note, title: 'My first note', body: 'This is my first note' }
  let(:second_note) { double :second_note, title: 'My second note', body: 'This is my second note' }
  let(:notebook) { double :notebook, saved_notes: [first_note, second_note]}

  describe '#print_note_titles' do
    it 'prints a list of note titles to the screen' do
      expect { note_printer.print_note_titles(notebook.saved_notes) }.to output("My first note\nMy second note\n").to_stdout
    end
  end
end
