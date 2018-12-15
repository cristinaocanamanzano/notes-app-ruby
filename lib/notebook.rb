class Notebook
  attr_reader :saved_notes

  def initialize
    @saved_notes = []
  end

  def add_note(title, body)
    saved_notes << {title: title, body: body}
    return 'Note saved!'
  end
end
