require 'pry'
require_relative('./backer.rb')
require_relative('./project_backer.rb')

class Project
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    array = ProjectBacker.all.select do |joiner|
      joiner.project == self
    end

    array.map do |joiner|
      joiner.backer
    end
  end
end

binding.pry
0