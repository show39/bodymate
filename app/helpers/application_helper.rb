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

  # チケットボックスを追加する
  def link_to_add_boxes(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    boxes = f.fields_for(association, new_object, child_index: id) do |t|
      render(association.to_s.singularize + "_boxes", f: t)
    end
    link_to(name, '#', class: "add_ticket", data: {id:id, boxes: boxes.gsub("\n", "")})
  end
end
