class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum sex: { male: 0, female: 1 }
  enum marital: { single: 0, married: 1 }


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  validates_presence_of :family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :job, :marital, :TEL

  has_many :event_users
  has_many :events, through: :event_users
  has_and_belongs_to_many :roles

    def has_role?(name)
      self.roles.where(name: name).length > 0
    end

    def name
    "#{family_name}"
    end

    def full_profile?
      family_name? && first_name? && family_name_kana? && first_name_kana? && sex? && job? && marital? && TEL?
    end
end
