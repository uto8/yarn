module ApplicationHelper
  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = "success" if type == "notice"
      type = "error" if type == "alert"
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true, positionClass: 'toast-bottom-right', preventDuplicates: true})</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def kantou
    current_user.address == 0
  end

end
