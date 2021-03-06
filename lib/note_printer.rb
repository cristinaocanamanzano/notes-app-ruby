class Note_printer
  def print_note_titles(notes)
    raise 'No notes have been saved yet' if notebook_empty?(notes)
    notes.each { |note| puts note.show_title }
  end

  def print_selected_note(notes, selected_note)
    raise 'That note does not exit, please select another number' unless note_exists?(notes, selected_note)
    puts notes[note_index(selected_note)].show_title
    puts notes[note_index(selected_note)].show_content
  end

  private

  def note_index(selected_note)
    selected_note - 1
  end

  def notebook_empty?(notes)
    notes.empty?
  end

  def note_exists?(notes, selected_note)
    selected_note <= notes.size
  end
end
