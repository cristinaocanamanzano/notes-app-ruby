require 'notebook'

describe "User stories" do
  it "User can add a note with a title and a body" do
    notebook = Notebook.new
    expect(notebook.add_note('My first note', 'This is my first note')).to eq 'Note saved!'
    expect(notebook.saved_notes).to eq [{title: 'My first note', body: 'This is my first note'}]
  end

  # User can see a list of all note titles
  # User can pick a note and see its title and body
end
