class TablesController < ApplicationController
  def index
    @tables = Table.all
    # @othertables = Table.uniq.pluck(:table_number)
  end

  def create
    newTable = Table.create table_params
    redirect_to tables_path
  end

  def new
    @table = Table.new
  end

  def edit
    @table = Table.find params[:id]
  end

  def show
    @table = Table.find params[:id]
  end

  def update
    table = Table.find params[:id]
    table.update table_params
    redirect_to table_path table.id
  end

  def destroy
    Table.destroy params[:id]
    redirect_to tables_path
  end



  private

  def table_params
    params.require(:table).permit(:table_number, :waitstaffs_id,)
  end
end
