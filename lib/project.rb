require 'pry'
class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title =title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    # backer.back_project(self) unless backer.backed_projects.include?(self)
    # binding.pry
  end
end
