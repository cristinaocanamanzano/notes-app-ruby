require 'notebook'

describe Notebook do
  subject(:notebook) { described_class.new(note_class, note_printer) }
  let(:note_class) { double :note_class }
  let(:first_note) { double :first_note, title: 'My first note', body: 'This is my first note' }
  let(:second_note) { double :second_note, title: 'My second note', body: 'This is my second note' }
  let(:note_printer) { double :note_printer, print_note_titles: 'Note titles list', print_selected_note: 'Note title and body' }

  context 'when adding one note' do
    describe '#add_note' do
      before do
        allow(note_class).to receive(:new).with('My first note', 'This is my first note').and_return(first_note)
      end

      it 'adds a note to the saved notes property array' do
        notebook.add_note('My first note', 'This is my first note')
        expect(notebook.saved_notes).to eq [first_note]
      end

      it 'confirms that the note have been saved' do
        expect(notebook.add_note('My first note', 'This is my first note')).to eq 'Note saved!'
      end
    end
  end

  context 'after adding two notes' do
    before do
      allow(note_class).to receive(:new).with('My first note', 'This is my first note').and_return(first_note)
      allow(note_class).to receive(:new).with('My second note', 'This is my second note').and_return(second_note)
      notebook.add_note('My first note', 'This is my first note')
      notebook.add_note('My second note', 'This is my second note')
    end

    describe '#see_title_list' do
      it 'calls print_note_titles method on note printer' do
        expect(note_printer).to receive(:print_note_titles).with(notebook.saved_notes)
        notebook.see_title_list
      end

      it 'prints value returned by print_note_titles method' do
        expect(note_printer).to receive(:print_note_titles).with(notebook.saved_notes).and_return('Note titles list')
        notebook.see_title_list
      end
    end

    describe '#select_note' do
      it 'shows title and body of note selected by user' do
        expect { notebook.select_note(1) }.to output("My first note\nThis is my first note\n").to_stdout
      end
      it 'shows title and body of another note selected by user' do
        expect { notebook.select_note(2) }.to output("My second note\nThis is my second note\n").to_stdout
      end
    end
  end
end
