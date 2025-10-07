defmodule TaskManager.Accounts do
  use Ash.Domain, otp_app: :task_manager, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource TaskManager.Accounts.Token
    resource TaskManager.Accounts.User
  end
end
