class Note
  attr_reader :title, :body

  def initialize(title, body)
    @title = title
    @body = body
  end

  def show_content
    @body
  end
end
