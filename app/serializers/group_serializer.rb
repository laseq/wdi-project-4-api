class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :creator_id, :image, :banner
  belongs_to :creator
  has_many :invited_members
  has_many :accepted_members
  has_many :pending_members
  has_many :events
  has_many :events_by_date

  # has_many :members

  def events
    customised_events = []

    object.events.each do |event|
      custom_event = event.attributes
      custom_event[:members_attending] = event.members_attending.collect{|member| member.slice(:id, :first_name, :last_name, :location, :email, :image, :phone)}
      custom_event[:members_not_attending] = event.members_not_attending.collect{|member| member.slice(:id, :first_name, :last_name, :location, :email, :image, :phone)}
      custom_event[:members_pending] = event.members_pending.collect{|member| member.slice(:id, :first_name, :last_name, :location, :email, :image, :phone)}
      customised_events.push(custom_event)
    end

    return customised_events
  end

  def events_by_date
  customised_events_by_date = {}
    object.events_by_date.each do |date, events|
      customised_events = []
      events.each do |event|
        e1 = Event.find(event[:id])
        custom_event = e1.attributes
        custom_event[:members_attending] = e1.members_attending.select(User.column_names - ["created_at", "updated_at", "password_digest"])
        custom_event[:members_not_attending] = e1.members_not_attending.select(User.column_names - ["created_at", "updated_at", "password_digest"])
        custom_event[:members_pending] = e1.members_pending.select(User.column_names - ["created_at", "updated_at", "password_digest"])
        customised_events.push(custom_event)
      end
      customised_events_by_date[date] = customised_events
    end
    return customised_events_by_date
  end

end
