class Backer
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def self.all
    @@all
    # binding.pry
  end

  def my_projects
    ProjectBacker.all.select { |project| project.backer == self }
  end

  def backed_projects
    my_projects.map { |project| project.project }
  end
end
