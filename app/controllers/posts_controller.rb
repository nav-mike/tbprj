class PostsController < ApplicationController

  def index
    run Post::Index
    render cell(Post::Cell::Index, result["model"])
  end

  def new
    run Post::Create::Present
    render cell(Post::Cell::New, @form)
  end

  def create
    run Post::Create do |result|
      return redirect_to posts_path
    end

    render cell(Post::Cell::New, @form)
  end

  def show
    run Post::Show
    render cell(Post::Cell::Show, result["model"])
  end

  def edit
    run Post::Update::Present
    render cell(Post::Cell::Edit, @form)
  end

  def update
    run Post::Update do |result|
      return redirect_to post_path(result["model"].id)
    end

    render cell(Post::Cell::Edit, @form)
  end

  def destroy
    run Post::Delete

    redirect_to posts_path
  end
end
