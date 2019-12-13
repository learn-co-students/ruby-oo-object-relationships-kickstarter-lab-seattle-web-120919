require "pry"
require_relative "backer.rb"
require_relative "project.rb"
require_relative "project_backer.rb"


p1 = Project.new("Coding")
p2 = Project.new("Learning")
p3 = Project.new("Cover up mole hole")

b1 = Backer.new("Flatiron")
b2 = Backer.new("Epicodus")
b3 = Backer.new("Hack Reactor")

pb1 = ProjectBacker.new(p1, b2)
pb2 = ProjectBacker.new(p3, b2)
pb3 = ProjectBacker.new(p2, b1)
pb4 = ProjectBacker.new(p1, b3)


binding.pry

puts "hello, world"

p1.project_backers
