class EntriesController < ApplicationController

  def index

    @entries = Entry.all
    @entry = Entry.new
  end

  def show
    @entry = Entry.find(params[:id])

    redirect_to entry_path
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path
    else
      raise "Cannot Save!"
    end
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.save
      redirect_to entries_path
    else
      raise "Cannot Save!"
    end
  end

def edit
    @pizza_place = PizzaPlace.find params[:id]
end


  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end


  private

  def entry_params
    params.require(:entry).permit(:author, :photo_url, :date_taken)
  end


end
