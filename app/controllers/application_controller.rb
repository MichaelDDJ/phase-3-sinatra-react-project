class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/Jobs" do
    Job.all.to_json
  end

  get "/Categories" do
    Job.all.to_json
  end

end
