class School
  def initialize(school_name)
    @name = school_name
    @roster = {} #creates an empty hash to add data
  end

  def roster #reader / getter
    @roster
  end

  def add_student(name, num)

    if @roster.keys.include?(num) #OR @roster.has_key?(num)
      @roster[num] << name #adding name to exisitng array with num
    else
    @roster[num] = []
    @roster[num] << name  #adds to the @roster hash # @roster[num] = [name] aother way to add the name to the hash
  end

  def grade(num)
    @roster[num] #searches for the entered Key and returns the values
  end

  def sort
    #I need to sort the values of each key
    @roster.each do |key, value|
    value.sort!
  end
  end

  end
end
