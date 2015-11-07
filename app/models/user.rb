class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :thumb => "100x100>" }, :default_url => ":style/defaultpic.png"
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    puts auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.avatar = auth.info.image
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
end
