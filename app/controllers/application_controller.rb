class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/Jobs" do
    jobs = Job.all
    jobs.to_json
  end

  get "/Categories" do
    categories = Category.all
    categories.to_json
  end

  get "/Categories/:id" do
    job_list = Category.find(params[:id])
    q = job_list.jobs
    q.to_json
  end

end
