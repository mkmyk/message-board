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
    
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      # 保存失敗
      @messages = Message.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
  private 
  def message_params
    params.require(:message).permit(:name, :body)
  end
  
end
