class Category < ActiveRecord::Base
    has_many :jobs

    def self.all_plus
        Category.all.to_h {|c| [c.job_title, c.jobs]}
    end
end