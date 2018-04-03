class User < ApplicationRecord
  validates :session_token,
   :password_digest, :name,
   :email, presence: true
  validates :email, :session_token, uniqueness: true

  attr_reader :password

  after_initialize :ensure_session_token

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.base64
  end

  def reset_session_token
    self.session_token = SecureRandom.base64
    self.save!
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    user && user.is_password?(password) ? user : nil
  end
end
