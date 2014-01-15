class PostsController < ApplicationController

    def index

    end

    # render the add post form
    def new

    end

    # ad a new post
    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to @post

      #render text:params[:post].inspect

    end


    private
      def post_params
        params.require(:post).permit(:title, :text)
      end




    # delete the post
    def delete

    end

    #update a new post
    def update

    end
end
