module Robert
  class Intern
    attr_reader :name, :luck, :skill, :power_of_will, :pleasure, :pain
    # TODO: 
    # Define a constant named QUOTES that consists of the following strings: 
    # - "Ready to work."
    # - "Work, work."
    # - "Work complete!"
    QUOTES = ['Ready to work.', 'Work, work.', 'Work complete!'].freeze

    def initialize(name, luck, skill, power_of_will, pleasure, pain)
      @name = name
      @luck = luck
      @skill = skill
      @power_of_will = power_of_will
      @pleasure = pleasure
      @pain = pain
    end

    def work!
      # TODO: 
      # Implement a method that randomly selects a single quote from the QUOTES array and prints it in a new line
      puts QUOTES.sample
    end

    def to_s
      # TODO: 
      # Implement a method that returns a string formatted in the following way:
      # {NAME} 
      #   - LUCK: {LUCK_VALUE} 
      #   - SKILL: {SKILL_VALUE} 
      #   - POWER_OF_WILL: {POWER_OF_WILL_VALUE} 
      #   - PLEASURE: {PLEASURE_VALUE}
      #   - PAIN: {PAIN_VALUE}
      "#{@name}\n"\
      "  - LUCK: #{@luck}\n"\
      "  - SKILL: #{@skill}\n"\
      "  - POWER_OF_WILL: #{@power_of_will}\n"\
      "  - PLEASURE: #{@pleasure}\n"\
      "  - PAIN: #{@pain}\n"
    end

    def weighted_sum
      @luck*2 + @skill*5 + @power_of_will*2 + @pleasure*3 - @pain*2 
    end
  end

  class Internship
    attr_reader :interns, :progress

    def initialize(interns)
      @interns = interns
    end

    def start
      # TODO: 
      # Implement a method that:
      # - iterates over interns and calls `to_s` and `work!` methods for each of them
      # - sets the progress of this internship object to 100
      interns.each do |intern|
        intern.to_s
        intern.work!
      end

      @progress = 100
    end

    def completed?
      # TODO: 
      # Implement a method that returns true if progress of the internship reached 100, otherwise returns false
      @progress == 100
    end
 
    def stats
      # TODO: 
      # Implement a method that prints the following stats:
      # - winner's name, 
      # - 2nd place name, 
      # - 3rd place name
      # - average, median, highest value and lowest value of each of the following attributes: skill, pleasure
      # Each stat should be displayed in the separate line in the format: {STAT NAME} => {STAT VALUE}
      puts "{winner} => #{pick_a_winner.name}"
      puts "{2nd place} => #{pick_2nd_place.name}"
      puts "{3rd place} => #{pick_3rd_place.name}"
      puts "{average skill} => #{average('skill')}"
      puts "{highest skill} => #{highest('skill')}"
      puts "{lowest skill} => #{lowest('skill')}"
      puts "{median skill} => #{median('skill')}"
      puts "{average pleasure} => #{average('pleasure')}"
      puts "{highest pleasure} => #{highest('pleasure')}"
      puts "{lowest pleasure} => #{lowest('pleasure')}"
      puts "{median pleasure} => #{median('pleasure')}"
    end

    def pick_a_winner
      # TODO: 
      # Implement a method that finds the best participant based on the following critiera:
      # - luck has a weight of 2
      # - skill has a weight of 5
      # - power_of_will has a weight of 2
      # - pleasure has a weight of 3
      # - pain has a weight of -2 
      # - the value used for comparison is the weighted sum of the intern's stats.
      interns.sort_by(&:weighted_sum)[-1]
    end

    def pick_2nd_place
      # TODO: 
      # Implement a method that finds the second best participant based on the following critiera: 
      # - luck has a weight of 2
      # - skill has a weight of 5
      # - power_of_will has a weight of 2
      # - pleasure has a weight of 3
      # - pain has a weight of -2
      # - the value used for comparison is the weighted sum of the intern's stats. 
      interns.sort_by(&:weighted_sum)[-2]
    end

    def pick_3rd_place
      # TODO: 
      # Implement a method that finds the third best participant based on the following critiera:
      # - luck has a weight of 2
      # - skill has a weight of 5
      # - power_of_will has a weight of 2
      # - pleasure has a weight of 3
      # - pain has a weight of -2
      # - the value used for comparison is the weighted sum of the intern's stats.
      interns.sort_by(&:weighted_sum)[-3]
    end

    def average(attribute_name)
      # TODO: 
      # Implement a method that returns the average of the given attribute among all of the participants
      arr = interns.map { |intern| intern.send(attribute_name) }
      arr.sum / arr.length
    end

    def highest(attribute_name)
      # TODO: 
      # Implement a method that returns the highest value of the given attribute among all of the participants
      interns.map { |intern| intern.send(attribute_name) }.max
    end

    def lowest(attribute_name)
      # TODO: 
      # Implement a method that returns the lowest value of the given attribute among all of the participants
      interns.map { |intern| intern.send(attribute_name) }.min
    end

    def median(attribute_name)
      # TODO: 
      # Implement a method that returns the median value of the given attribute among all of the participants
      arr = interns.map { |intern| intern.send(attribute_name) }
      sorted = arr.sort
      midpoint = arr.length / 2
      if arr.length.even?
        sorted[midpoint-1, 2].sum / 2.0
      else
        sorted[midpoint]
      end
    end
  end
end

# TODO:
# 1. In the main context here, initialize "interns" array with 5 objects with the following features:
#   - Astrid has 10 luck, 20 skill, 15 concentrated power of will, 5 pleasure, 50 pain
#   - Bjørn has 5 luck, 15 skill, 10 concentrated power of will, 10 pleasure, 50 pain
#   - Erik has 50 luck, 20 skill, 15 concentrated power of will, 5 pleasure, 10 pain
#   - Harald has 20 luck, 50 skill, 10 concentrated power of will, 15 pleasure, 5 pain
#   - Helga has 30 luck, 50 skill, 5 concentrated power of will, 10 pleasure, 5 pain
# 2. Initialize new "internship" object using these interns and "start" the internship
#   - Display "stats" of the internship if the "internship" object has been completed
# 3. Run this script/file and make sure that all messages and stats are being displayed in the right format on the screen
# 4. Make sure that implemented methods are returning the correct values
# 5. Make sure you haven't missed any TODO tasks described inside the comments

  astrid = Robert::Intern.new('Astrid', 10, 20, 15, 5, 50)
  bjarn = Robert::Intern.new('Bjarn', 5, 15, 10, 10, 50)
  erik = Robert::Intern.new('Erik', 50, 20, 15, 5, 10)
  harald = Robert::Intern.new('Harald', 20, 50, 10, 15, 5)
  helga = Robert::Intern.new('Helga', 30, 50, 5, 10, 5)

  interns = [astrid, bjarn, erik, harald, helga]

  internship = Robert::Internship.new(interns) 
  internship.start
  puts internship.stats
