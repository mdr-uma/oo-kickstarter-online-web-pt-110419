require 'pry'

class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects.push project
    backer.back_project(self) unless backer.backed_projects.include?(self)
    # binding.pry
  end
end
