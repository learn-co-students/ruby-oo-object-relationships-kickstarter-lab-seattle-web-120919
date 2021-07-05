require "pry"

class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def helper
    ProjectBacker.all.select { |backer| backer.project == self }
  end

  def backers
    helper.map { |backer| backer.backer }
  end
end
