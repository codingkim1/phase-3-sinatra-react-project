class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/messages" do
    message = Message.all 
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

end
