require 'pry'

class Backer

    attr_accessor :name
    attr_reader :project

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
        #self #to call current backer
    end 

    def backed_projects
        find_project_backer.map do |project_backer| 
            project_backer.project 
        end 
    

        # binding.pry
    end 

    def find_project_backer 
        ProjectBacker.all.find_all do |project| 
            self == project.backer
        end  
    end 
    
end 