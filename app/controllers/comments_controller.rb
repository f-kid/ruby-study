class CommentsController < ApplicationController
  def index
    @theme_title = Theme.find(params[:theme_id])
    puts 99999999999999999999999999999999999999
    puts params
    puts 99999999999999999999999999999999999999

#    @comments = Comment.all
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
    @theme_id = params[:id] #this is invalid
#    p params
#    @id = params[:theme_id]
#    puts 22222222222222222222222222
#    puts @theme_id
#    puts @comment
#    puts 
#    puts 22222222222222222222222222
  end

  def create
    @comment = Comment.new(params[:comment])
    logger.debug "------------------debug start---------------------"
    logger.debug "params ="
    logger.debug params

    logger.debug "params[:comment]="
    logger.debug params[:comment]

    logger.debug "@comment="
    logger.debug @comment

    logger.debug "@comment.id="
    logger.debug @comment.id
   
    logger.debug "comment.theme_id="    
    logger.debug @comment.theme_id

    logger.debug "------------------debug end---------------------"

    @comment.save
    redirect_to :controller => 'themes', :action => 'show', :id => params[:theme_id]

#format.html { redirect_to(:action => 'show', :id => params[:theme_id])}


#    redirect_to :url => "/themes/#{params[:theme_id]}/"

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

#   redirect_to theme_path(@comment.theme.id)
#   redirect_to "http://www.google.com"

  end

  def edit
  end
end
