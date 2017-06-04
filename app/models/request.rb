class Request < ApplicationRecord
  belongs_to :group
  belongs_to :sender, :class_name => "User", :foreign_key => :sender_id
  belongs_to :receiver, :class_name => "User", :foreign_key => :receiver_id
  has_many :mass_requests
  has_many :group_invites

  before_create :save_default_status

    private

      def save_default_status
        if self.status != 'accepted'
          self.status = 'pending'
        end
      end
end
