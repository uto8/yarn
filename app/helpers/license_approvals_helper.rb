module LicenseApprovalsHelper
  def license_checked?
    current_user.license_approval_status == true
  end
end
