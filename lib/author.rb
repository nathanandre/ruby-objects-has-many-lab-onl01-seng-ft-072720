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

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    song
  end
  
  def song_count
    self.songs.size 
  end 

  def self.song_count
    @@song_count
  end

end