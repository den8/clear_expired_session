class Session < ActiveRecord::Base
  def self.clear_expired(time = 60.minutes)
    self.delete_all(["updated_at < ?", (Time.now - time)])
  end
end

