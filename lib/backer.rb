class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select {|project| project.backer == self} 
        projects = []
        project_backers.each {|pb| projects << pb.project}
        projects
    end
end