module DirectMessagesHelper
  def message(direct_message)
    if current_user == direct_message.user
      return "text-right"
    end
  end
end
