class AccountsController < ApplicationController
  def index
    @accounts = Account.all.order(:id)
  end

  def transfer
    raise "User was not logged in" unless current_user

    account = current_user.account
    transfer_credits = [params[:credits].to_i, account.balance].min # this is a really terrible bank!

    Account.transaction do
      payee_account = Account.find(params[:payee_account_id])

      payee_account.balance += transfer_credits
      account.balance -= transfer_credits

      payee_account.save!
      account.save!
    end
    render nothing: true, status: 200
  end
end
