class CanAccessResque
  def self.matches?(request)
    current_user = request.env['warden'].user
    current_user.superadmin?
  end
end
