class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :Rememberable

  enum sex: { male: 0, female: 1 }
  enum marital: { single: 0, married: 1 }
  # ステータス: pre_active (仮登録非参加者), active (本登録参加者),admin(同志),super_admin(管理者), deleted (削除済み).
  enum status: { pre_active: 0,active: 1, admin: 2, super_admin: 3, deleted: 9 }


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  validates_presence_of :family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :prefecture_id, :city, :job, :marital, :TEL

  has_many :event_users
  has_many :events, through: :event_users
  has_and_belongs_to_many :roles
  has_one :prefecture

    def has_role?(name)
      self.roles.where(name: name).length > 0
    end

    def name
    "#{family_name + first_name}"
    end

    def full_profile?
      family_name? && first_name? && family_name_kana? && first_name_kana? && sex? && prefecture_id? && job? && marital? && TEL?
    end
end
