

class Author
    attr_accessor :name
    attr_reader :post
        
    def initialize(name)
        @author = name
        @post = []
    end
    def name
        @author
    end
    def add_post(post)
        post.author = self
    end
    def posts
        Post.all.select {|post| post}
    end
    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        new_post
    end
    def self.post_count
        Post.all.size
    end
end