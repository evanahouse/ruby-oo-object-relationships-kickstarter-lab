require 'pry'
# require 'project_backer.rb'

class Backer

    @all = []
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb_array = ProjectBacker.all.filter{|pb| pb.backer == self}
        pb_array.map{|pb| pb.project}
    end

end