class ExpendituresController < ApplicationController

  def index
    @expenditures = Expenditure.all.where(user_id: current_user.id)
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    @expenditure = current_user.expenditures.build(expenditure_params)
    if @expenditure.save
      redirect_to expenditure_path(@expenditure)
    else
      redirect_to new_expenditure_path
    end
  end

  def show
    @expenditure = Expenditure.find(params[:id])
  end

  private
    def expenditure_params
      params.require(:expenditure).permit(:name, :price, :quantity, :purchase_date)
    end
end
