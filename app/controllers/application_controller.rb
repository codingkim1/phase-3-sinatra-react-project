class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  #Routes for messages 
  get "/messages" do
    message = Message.all 
    message.to_json 
  end

  get "/messages/:id" do
    message = Message.find(params[:id])
    message.to_json  
  end

  post '/messages' do 
    message = Message.create(
      body: params[:body],
      username: params[:username],
      created_at: params[:created_at] 
    )
    message.to_json 
  end

  patch '/messages/:id' do 
    message = Message.find(params[:id])
    message.update(
      body: params[:body]
    )
    message.to_json
  end

  delete '/messages' do 
    Message.all.destroy 
  end 

  delete '/messages/:id' do 
    message = Message.find(params[:id])
    message.destroy  
  end


  #Routes for users
  get "/users" do
    user = User.all 
    user.to_json 
  end

  get "/user/:id" do
    user = User.find(params[:id])
    user.to_json  
  end

  post '/users' do 
    user = User.create(
      username: params[:username],
      password: params[:password],
      email: params[:email]
    )
    user.to_json 
  end

end
