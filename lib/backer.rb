require 'pry'
class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        return ProjectBacker.new(project, self)
    end

    def backed_projects
        binding.pry
       projects = [ ]
        ProjectBacker.all.map do |project_backer|
            if self ==  project_backer.backer
                projects.push(project_backer.project)
            end
        end
        return projects
    end

end