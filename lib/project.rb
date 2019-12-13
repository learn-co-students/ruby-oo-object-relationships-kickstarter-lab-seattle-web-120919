class Project

    attr_reader :title

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        #self #to call current backer
    end 


    def backers
        find_project_backer.map do |project_backer| 
            project_backer.backer
        end 
    

        # binding.pry
    end 

    def find_project_backer 
        #binding.pry
        ProjectBacker.all.find_all do |project_backer| 
            self == project_backer.project
        end  
    end 
end 