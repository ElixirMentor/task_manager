defmodule TaskManager.Organizations do
  use Ash.Domain,
    otp_app: :task_manager

  resources do
    resource TaskManager.Organizations.Organization
    resource TaskManager.Organizations.Membership
  end
end
