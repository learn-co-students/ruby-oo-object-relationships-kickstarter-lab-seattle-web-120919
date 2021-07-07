class Backer 

    attr_accessor :name

    def initialize(name)
        @name = name 
    end 
    
    def back_project(project)
        # binding.pry 
        return ProjectBacker.new(project, self)
    end 

    def backed_projects
        projects = []
        ProjectBacker.all.each do |project_backer|
            if project_backer.backer === self
                projects.push(project_backer.project)
            end
        end
        return projects
    end
end 