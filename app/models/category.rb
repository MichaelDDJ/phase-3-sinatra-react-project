class Category < ActiveRecord::Base
    has_many :jobs

    def self.all_plus
        Category.all.to_h {|c| [c.title, c.jobs]}
    end

    def self.something
        Category.all.collect {|x| x.jobs.each {|job| job.merge({category: "#{x.title}"})}}
    end

    def q
        
    end
end