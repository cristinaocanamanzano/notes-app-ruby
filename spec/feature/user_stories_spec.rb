require 'notebook'

describe "User stories" do

  before(:each) do
    @notebook = Notebook.new
  end

  it "User can add a note with a title and a body" do
    expect(@notebook.add_note('My first note', 'This is my first note')).to eq 'Note saved!'
    expect(@notebook.saved_notes).to eq [{title: 'My first note', body: 'This is my first note'}]
  end

  it "user can see a list of all note titles" do
    @notebook.add_note('My first note', 'This is my first note')
    @notebook.add_note('My second note', 'This is my second note')
    expect { @notebook.see_title_list }.to output("My first note\nMy second note\n").to_stdout
  end

  # User can pick a note and see its title and body
end
