module ApplicationHelper
  def button_text
    if action_name == "new"
      "登録する"
    elsif action_name == "edit"
      "編集する"
    end
  end
end
