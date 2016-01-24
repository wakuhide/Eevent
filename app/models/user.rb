class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :event_users
  has_many :events, through: :event_users
  has_and_belongs_to_many :roles

    def has_role?(name)
      self.roles.where(name: name).length > 0
    end
    def name
    "#{fullname}"
    end

    def full_profile?
      fullname? && gender? && birth_date? && addresss && job && marital && TEL
    end
end
