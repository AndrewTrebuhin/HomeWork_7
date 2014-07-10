class Person

  attr_accessor :speech
  attr_reader :name, :age, :judge

  def initialize(params)
        
    if self.class == Man
      raise ArgumentError, 
        "Your age is not suitable for the role" unless params[:age].between?(12, 20)
    end

    if self.class == Woman
      raise ArgumentError, 
        "Your age is not suitable for the role" unless params[:age].between?(17, 28)
    end
  
    @age    = params[:age]
    @name   = params[:name].capitalize
    @speech = params[:speech]
    @judge  = params[:judge]
  end

  def show
    puts "Name: #{self.name}, #{self.age} years old, sex: #{self.class}"
    puts "Judge." if self.judge
    puts "Speeches: #{self.speech}" unless self.judge
  end

end

class Man < Person

  def rate_speech(reporter)
    if self.judge
      return rand(7..10) if reporter.class == Woman && reporter.age.between?(18, 25)
      rand(1..10)
    else
      raise "You are not a judge!"
    end 
  end
end

class Woman < Person

  def rate_speech(reporter)
    if self.judge
      return rand(1..7) if reporter.speech.text_length < 30
      rand(1..10)
    else
      raise "You are not a judge!"
    end 
  end
end