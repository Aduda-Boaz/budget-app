class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.where(user_id: current_user, id: params[:category_id])
  end

  def new
    @transaction = Transaction.new
    @category = Category.where(params[:category_id])
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id

    if @transaction.save
      redirect_to category_transactions_path(params[:category_id])
    else
      redirect_to new_category_transaction_path(params[:category_id])
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, category_id: [])
  end
end
