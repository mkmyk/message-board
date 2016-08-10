class MessagesController < ApplicationController
  #MessageController has many actions　(methods).

  #This call the view "app/views/messages/index.html.erb"
  def index
    # Message.new initializes a Message object
    # This varuable connects the index form and a table
    @message = Message.new
    
    # shows all messages
    @messages=Message.all
  end
  
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  
  private 
  def message_params
    params.require(:message).permit(:name, :body)
  end
  
end
