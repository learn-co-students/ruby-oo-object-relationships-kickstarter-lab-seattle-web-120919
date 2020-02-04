class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select {|backer| backer.project == self} 
        backers = []
        project_backers.each {|pb| backers << pb.backer}
        backers
    end
end