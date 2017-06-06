class Event < ApplicationRecord
  belongs_to :group


  before_create :save_default_status

    private

      def save_default_status
        t1 = Time.now
        if self.start_time >= t1
          self.status = "Upcoming"
        elsif (self.start_time < t1 && self.end_time > t1)
          self.status = "Now"
        else
          self.status = "Ended"
        end
      end

end
