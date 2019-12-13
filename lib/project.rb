class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pb = project_backers
        pb.map do |project_backer|
            project_backer.backer        
        end
    end

    def project_backers
        ProjectBacker.all.find_all do |project_backer|
            project_backer.project == self
        end
    end
end