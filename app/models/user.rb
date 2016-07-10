class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                format: { with: VALID_EMAIL_REGEX },
                uniqueness: { case_sensitive: false } #一意性があり、かつ大文字小文字関係なく
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
