class Group < ApplicationRecord
  has_many :requests, dependent: :destroy
  belongs_to :creator, :class_name => "User", :foreign_key => :creator_id
  has_many :invited_members, -> { distinct }, through: :requests, source: :receiver
  has_many :accepted_members
  has_many :pending_members
  has_many :events, -> { order(start_time: :asc) }
  has_many :events_by_date
  scope :events_ascending_order, -> { includes(:events).order("events.start_time ASC") }

  def events_by_date
    events.group_by{ |event| event.start_time.strftime("%a %d %b %Y") }
  end

  def accepted_members
    invited_members.select { |member| member.requests_as_receiver.where(["group_id = ?", self.id]).first.status == 'accepted' }
  end

  def pending_members
    invited_members.select { |member| member.requests_as_receiver.where(["group_id = ?", self.id]).first.status == 'pending' }
  end

end
