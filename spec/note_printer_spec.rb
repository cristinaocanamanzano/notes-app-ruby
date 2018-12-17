require 'note_printer'

describe Note_printer do
  subject(:note_printer) { described_class.new }
  let(:first_note) { double :first_note, show_title: 'My first note', show_content: 'This is my first note' }
  let(:second_note) { double :second_note, show_title: 'My second note', show_content: 'This is my second note' }
  let(:notebook) { double :notebook, saved_notes: [first_note, second_note]}

  describe '#print_note_titles' do
    it 'prints a list of note titles to the screen' do
      expect { note_printer.print_note_titles(notebook.saved_notes) }.to output("My first note\nMy second note\n").to_stdout
    end

    it 'informs user that no notes have been added yet' do
      expect { note_printer.print_note_titles([]) }.to raise_error('No notes have been saved yet')
    end
  end

  describe '#select_note' do
    it 'shows title and body of note selected by user' do
      expect { note_printer.print_selected_note(notebook.saved_notes, 1) }.to output("My first note\nThis is my first note\n").to_stdout
    end
    it 'shows title and body of another note selected by user' do
      expect { note_printer.print_selected_note(notebook.saved_notes, 2) }.to output("My second note\nThis is my second note\n").to_stdout
    end
    it 'informs user that selected note does not exist' do
      expect { note_printer.print_selected_note(notebook.saved_notes, 3) }.to raise_error('That note does not exit, please select another number')
    end
  end
end
