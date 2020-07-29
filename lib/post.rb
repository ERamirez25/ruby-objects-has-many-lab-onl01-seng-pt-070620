class Post
 @@all = []
  attr_accessor :title, :author
  def initialize(title)
    @title = title
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
      
    end
    
  end
  def self.all
  @@all = all 
  end 
end