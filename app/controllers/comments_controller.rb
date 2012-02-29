class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def show
#    @theme = Theme.find_all_by_theme_id(params[:id])
#    @themes = Theme.all

#    @comments = Comment.find_all_by_theme_id(params[:id])
#    @comments = Comment.all
    @all_comments = Comment.all #for_test
#    @com = @theme.comments

#    @comments = Comment.find_by_theme_id(params[:id])

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
 
#    respond_to do |format|
#      if @comment.update_attributes(params[:comment])
#        format.html { redirect_to "www.google.com", notice: 'Theme was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: :new }
#        format.json { render json: @comment.errors, status: :unprocessable_entity }
#      end
#    end
    
#    if @comment.save
#      redirect_to controller: :themes, action: :show, id: @comment.theme.id
#    else
#      redirect_to controller: :comments, action: :new
#    end

   @comment.save
#   redirect_to theme_path(@comment.theme.id)
#   redirect_to "http://www.google.com"

  end

  def edit
  end
end
