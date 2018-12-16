class Note_printer
  def print_note_titles(notes)
    raise 'No notes have been saved yet' if notes.empty?
    notes.each { |note| puts note.title }
  end

  def print_selected_note(notes, selected_note)
    raise 'That note does not exit, please select another number' if selected_note > notes.size
    puts notes[note_index(selected_note)].title
    puts notes[note_index(selected_note)].body
  end

  private

  def note_index(selected_note)
    selected_note - 1
  end
end
