class Network

  attr_reader :name,
              :shows
              
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    highest_salary_by_show = @shows.map do |show|
      show.characters.max_by do |character|
        character.salary
      end
    end
    highest_salary_by_network = highest_salary_by_show.max_by do |character|
      character.salary
    end
    highest_salary_by_network.actor
  end

  # def payroll
  #   hash = Hash.new()
  #
  #     @shows.map do |show|
  #       show.characters.tap do |character|
  #         character.tap do |actor, salary|
  #           hash << actor, salary
  #
  #         end
  #       end
  #     end
  # end

end
