class ProjectsController < ApplicationController
  get '/projects' do
    @projects = Project.all

    erb :'projects/index'
  end

  post '/projects/new' do
    binding.pry
  end

  post '/projects/:id' do
    @projects = Project.find_by(id: params[:id])
    erb :'projects/show'
  end

  # get '/projects/:id' do
  #   binding.pry
  #   @projects = Project.id
  #   erb :'projects/show'
  # end
end
