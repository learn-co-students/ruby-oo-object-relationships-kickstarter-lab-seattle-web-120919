#each instance of ProjectBacker will represent an 
#association between a single backer and a single project
class Backer 
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb = project_backers
        pb.map do |project_backer|
            project_backer.project        
        end
    end

    def project_backers
        ProjectBacker.all.find_all do |project_backer|
            project_backer.backer == self
        end
    end

end