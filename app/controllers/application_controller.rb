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

  post '/Categories' do
    category= Category.create(
      title: params[:title]
    )
    category.to_json
  end

  post '/Jobs' do
    job = Job.create(
      job_title: params[:job_title],
      description: params[:description],
      category_id: params[:category_id]
    )
    job.to_json
  end


end
