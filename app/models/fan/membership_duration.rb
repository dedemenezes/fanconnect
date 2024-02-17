module Fan
  class MembershipDuration
    include ActiveModel::Model

    attr_accessor :number
    validates :number, presence: true
  end
end
