class LicenseApprovalsController < ApplicationController
  def new
    @license_approval = LicenseApproval.new
  end

  def create
    @license_approval = LicenseApproval.create(license_approval_params)
    if @license_approval.save
      flash[:success] = "身分証明書を送信しました。"
      redirect_to root_path
    else
      flash[:error] = "送信に失敗しました。"
      rener "new"
    end
  end

  private
  def license_approval_params
    params.require(:license_approval).permit(:user_id, :image)
  end
end
