class Notebook
  attr_reader :saved_notes

  def initialize
    @saved_notes = []
  end

  def add_note(title, body)
    saved_notes << {title: title, body: body}
    return 'Note saved!'
  end

  def see_title_list
    saved_notes.each { |note| puts note[:title] }
  end

  def select_note(note)
    puts saved_notes[note][:title]
    puts saved_notes[note][:body]
  end
end
