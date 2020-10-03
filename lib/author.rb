require "pry"

class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @titles = []
  end
  
  def add_post(title)
    @titles << title
    title.author = self
  end
  
  
  def posts
    Post.all.select {|title| title.author == self}
  end
  
  def author_name
    self.author
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end
  
  def self.post_count
    Post.all.count
  end
  
end

