class Author

  attr_accessor :name
  #attr_reader :songs 

  @@post_count = 1

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def songs 
    Post.all.select {|post| post.author == self}
  end 

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def add_post_by_name(name)
    post = Post.new(name)
    self.add_post(post)
    song
  end
  
  def post_count
    self.posts.size 
  end 

  def self.post_count
    @@song_count
  end

end