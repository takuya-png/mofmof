module EstatesHelper
  def button_text
    if action_name == "new"
      "登録する"
    elsif action_name == "edit"
      "編集する"
    else
      "再送信する"
    end
  end

  def path_choose
    if action_name == "new"
      estates_path
    elsif action_name == "edit"
      estate_path
    end
  end
  
  def request_choose
    @estate.id ? 'patch' : 'post'
  end
end
