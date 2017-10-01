module ApplicationHelper
  # ページごとに完全なタイトルを返す
  def full_title(page_title='')
    base_title = "Bobymate - スポーツイベントを無料掲載・集客支援"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
