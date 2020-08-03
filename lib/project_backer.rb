class ProjectBacker
  attr_reader :backer, :project 

  @@all = []

  def initialize(backer, project)
    @backer = backer
    @project = project
    @@all << self
  end

  def self.all
    @@all
  end

end