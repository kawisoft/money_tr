class PostsController < ApplicationController

    # the defualt controller to render the index template in the posts view
    def index
        @posts = Post.all
    end

    # render the add post form
    def new
       @post = Post.new

    end

    # ad a new post
    def create
      @post = Post.new(params[:post].permit(:title, :text))
     
      if @post.save
        redirect_to @post
      else
        render 'new'
      end
    end
    
    # displays the new post
    def show
      # assign the result set to the post instance variable
      @post = Post.find(params[:id])
      
    end
      

    # this function is not exposed to any other function, define which data items can be accepted from the post request
    private
      def post_params
        params.require(:post).permit(:title, :text)
      end


    # show the new post
    def edit
      # assign the result set to the post instance variable
      @post = Post.find(params[:id])
      
    end


    # delete the post
    def destroy
      @post= Post.find(params[:id])
      @post.destroy
      
      redirect_to posts_path
    end
    

    #update a new post
    def update
      @post = Post.find(params[:id])
 
      if @post.update(params[:post].permit(:title, :text))
        redirect_to @post
      else
        render 'edit'
      end
      
    end
end
