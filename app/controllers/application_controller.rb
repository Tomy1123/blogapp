class ApplicationController < ActionController::Base
  autocomplete :blog, :title, full: true

  def index
    # 検索クエリ: params[:user][:name]
    if params[:blog] && params[:blog][:title]
      blog_title = params[:blog][:title]
      @blogs = Blog.where("title LIKE '%#{blog_title}%'")
    else
      @blogs = Blog.all
    end
  end
  
end
