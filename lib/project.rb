class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        return ProjectBacker.new(self, backer)
    end

    def backers
        # binding.pry
       projects = [ ]
        ProjectBacker.all.each do |project_backer|
            if self ==  project_backer.project
                projects.push(project_backer.backer)
            end
        end
        return projects
    end
end