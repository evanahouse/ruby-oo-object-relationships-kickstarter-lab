require 'pry'
# require 'project_backer.rb'

class Project

    attr_reader :title

    @all = []
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pb_array = ProjectBacker.all.filter{|pb| pb.project == self}
        pb_array.map{|pb| pb.backer}
    end

    
end