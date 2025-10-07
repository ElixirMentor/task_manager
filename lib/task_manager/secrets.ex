defmodule TaskManager.Secrets do
  use AshAuthentication.Secret

  def secret_for(
        [:authentication, :tokens, :signing_secret],
        TaskManager.Accounts.User,
        _opts,
        _context
      ) do
    Application.fetch_env(:task_manager, :token_signing_secret)
  end
end
