require 'notebook'

describe 'User stories' do
  before(:each) do
    @notebook = Notebook.new
  end

  it 'user can add a note with a title and a body' do
    expect(@notebook.add_note('My first note', 'This is my first note')).to eq 'Note saved!'
    expect(@notebook.saved_notes[0]).to be_a(Note)
  end

  it 'user can see a list of all note titles' do
    expect { @notebook.see_title_list }.to raise_error('No notes have been saved yet')
    @notebook.add_note('My first note', 'This is my first note')
    @notebook.add_note('My second note', 'This is my second note')
    expect { @notebook.see_title_list }.to output("My first note\nMy second note\n").to_stdout
  end

  it 'user can pick a note and see its title and body' do
    @notebook.add_note('My first note', 'This is my first note')
    @notebook.add_note('My second note', 'This is my second note')
    expect { @notebook.select_note(1) }.to output("My first note\nThis is my first note\n").to_stdout
    expect { @notebook.select_note(3) }.to raise_error('That note does not exit, please select another number')
  end
end
