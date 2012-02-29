class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
#    @comments = Comment.find_all_by_theme_id(params[:id]) #check maybe params => @theme.id
#    @themes = Theme.find_all_by_id(@theme.id)
#    @num = params[:id]
#    @comments = Comment.find_all_by_theme_id("1")
#     @comments = Comment.all
    @comments = Comment.find(:all, :conditions => ["theme_id = :id",{:id => @theme.id}])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(params[:theme])

    respond_to do |format|
      if @theme.update_attributes(params[:theme])
        format.html { redirect_to @theme, notice: 'Theme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: :new }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end 



#    if @theme.save
#      redirect_to (url_for(action: "index"))
#    else
#      redirect_to (url_for(action: "new"))
#    end
#  end

  def edit
  end
end
