class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :event_users
  has_many :events, through: :event_users

    def name
    "#{family_name} #{first_name}"
    end

    def name_kana
    "#{family_name_kana} #{first_name_kana}"
    end

    def full_profile?
      avatar? && family_name? && first_name? && family_name_kana? && first_name_kana?
    end
end
