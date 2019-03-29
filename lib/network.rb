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

  def characters
    @shows.flat_map do |show|
      show.characters
    end
  end

  def highest_paid_actor
    characters.max_by do |character|
      character.salary
    end.actor


  end

  def payroll
    hash = {}

    ## ANOTHER WAY TO DO IT:
    # characters.reduce({}) do |hash, character|
    #   hash[character.actor] = character.salary
    #   hash
    # end

    characters.map do |character|
      hash[character.actor] = character.salary
    end
    hash
  end

end
