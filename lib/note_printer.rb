class Note_printer
  def print_note_titles(notes)
    notes.each { |note| puts note.title }
  end

  def print_selected_note(notes, selected_note)
    puts notes[selected_note - 1].title
    puts notes[selected_note - 1].body
  end
end
