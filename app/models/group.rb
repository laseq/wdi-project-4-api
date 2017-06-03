class Group < ApplicationRecord
  has_many :requests
  belongs_to :creator, :class_name => "User", :foreign_key => :creator_id
  has_many :invited_members, -> { distinct }, through: :requests, source: :receiver
  has_many :accepted_members
  has_many :pending_members
  has_one :image

  # def members
  #   accepted = []
  #   accepted = Group.find(self.id).invitedmembers.map { |user| user.requests_as_receiver.where("group_id = self.id}", group_id).first.status == 'accepted'}
  #   accepted
  # end


  # def accepted_members
  #   invited_members.map { |member| member.status == 'accepted' }
  # end
  def accepted_members
    invited_members.select { |member| member.requests_as_receiver.where(["group_id = ?", self.id]).first.status == 'accepted' }
  end

  # def rejected_members
  #   members.map { |member| member.status == 'rejected' }
  # end
  #
  def pending_members
    invited_members.select { |member| member.requests_as_receiver.where(["group_id = ?", self.id]).first.status == 'pending' }
  end
  # def pending_members
  #   invited_members.map { |member| member.status == 'pending' }
  # end

end
