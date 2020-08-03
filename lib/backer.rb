class Backer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(self, project)
  end

  def backed_projects
    joiners = ProjectBacker.all.select do |joiner|
      joiner.backer == self
    end
    
    joiners.map do |joiner|
      joiner.project
    end

  end
end