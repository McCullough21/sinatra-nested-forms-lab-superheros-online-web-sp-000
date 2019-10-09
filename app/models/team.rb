class Team
  attr_accessor :name, :motto
  @@all = []

  def initialize(name, motto)
    @motto = motto
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

end
