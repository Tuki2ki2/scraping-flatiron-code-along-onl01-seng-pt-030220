class Course

@@all = []

def self.all
  @@all
end


attr_accessor :title, :schedule, :description

def initialize
  @@all << self
end


end
