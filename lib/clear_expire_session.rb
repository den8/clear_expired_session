class Session < ActiveRecord::Base
  def self.clear_expired(time = 60.minutes)
    now = Time.zone ? Time.zone.now : Time.now
    self.delete_all(["updated_at < ?", (now - time)])
  end
end

