class MigrateContentoRichContentBlogs < ActiveRecord::Migration[7.0]
  def up
    Blog.find_each do |blog|
      blog.update(rich_content: blog.content)
    end
  end

  def down
    Blog.find_each do |blog|
      blog.update(content: blog.rich_content)
      blog.update(rich_content: nil)
    end
  end
end
