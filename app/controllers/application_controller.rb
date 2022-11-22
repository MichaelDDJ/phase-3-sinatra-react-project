class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/Categories" do
    categories = Category.all
    categories.to_json(include: {jobs:{only:[:job_title, :description, :id]}})
  end

  post '/Categories' do
    category= Category.create(
      title: params[:title]
    )
    category.to_json(include: {jobs:{only:[:job_title, :description]}})
  end

  patch '/Categories/:id' do
    category = Category.find(params[:id])
    category.update(
      title: params[:title],
    )
    category.to_json(include: {jobs:{only:[:job_title, :description]}})
  end

  delete '/Categories/:id' do
    category_jobs = Category.find(params[:id]).jobs
    category_jobs.destroy
    category_jobs.to_h-json
    category = Category.find(params[:id])
    category.destroy
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

  delete '/Jobs/:id' do
    job = Job.find(params[:id])
    job.destroy
    job.to_json
  end
end
