class Course

@@all = []
def self.all
  @@all
end


attr_accessor :title, :schedule, :description

def initialize(title, schedule, description)
  @title = title
  @schedule = schedule
  @description = description
  @@all << self
end


end
