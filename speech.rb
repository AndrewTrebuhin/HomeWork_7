class Speech

  attr_reader :topic, :text

  def initialize(params)
    @topic = params[:topic]
    @text  = params[:text] 
  end

  def text_length
    self.text.split.length
  end

  def show
    puts "Words: #{self.text_length}"
    puts "Topic: #{self.topic}"
    puts "Text: #{self.text}"
  end

end
