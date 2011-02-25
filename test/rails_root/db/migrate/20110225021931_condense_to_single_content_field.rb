class CondenseToSingleContentField < ActiveRecord::Migration
  def self.up
    add_column :layouts, :content, :text
 
    BigCms::Layout.find_each do |layout|
      layout.content = [layout.head, layout.pre_content, "{{ content_for_layout }}", layout.post_content].join("\n")
      layout.save
    end
  end

  def self.down
  end
end
