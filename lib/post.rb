class Post
  attr_accessor :title, :author

@@all = []

def initialize(title)
  @title = title
  @@all << self
end



def self.all
  @@all
end

def self.post_count
  self.all.size
end

def posts
    Post.all.select {|post| post.author == self}
  end

def author_name
 #if self.author
   #self.author.name
 #else
#   nil
 #end

 self.author == nil ? nil : self.author.name
 
end


end
