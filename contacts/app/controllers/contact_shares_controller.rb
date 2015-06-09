class ContactShareController < ApplicationController

  def create
    contact_share = ContactShare.new(contact_share_params)
    render json: contact_share
  end

  def destroy
    contact_share = ContactShare.find(params[:id])
    contact_share.destroy
    render json: contact_share
  end

  private
  def contact_share_params
    params.require(:contact_share).permit(:user_id, :contact_id)
  end

end
