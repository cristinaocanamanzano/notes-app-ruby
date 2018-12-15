require 'note'
require 'note_printer'

class Notebook
  attr_reader :saved_notes, :note_class, :note_printer

  def initialize(note_class = Note, note_printer = Note_printer.new)
    @note_class = note_class
    @saved_notes = []
    @note_printer = note_printer
  end

  def add_note(title, body)
    save_note(title, body)
    'Note saved!'
  end

  def see_title_list
    note_printer.print_note_titles(saved_notes)
  end

  def select_note(note)
    puts saved_notes[note - 1].title
    puts saved_notes[note - 1].body
  end

  private

  def save_note(title, body)
    saved_notes << note_class.new(title, body)
  end
end
