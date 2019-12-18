class User < ApplicationRecord
  # 名前の長さに制限を加える。
  validates :name, presence: true,length: {maximum: 15}
  # メールアドレスの正規表現を追加する。
  validates :email, presence: true ,format: {with:/\A\S+@\S+\.\S+\Z/}
  # パスワード文字数を８〜３２文字と制限をかける。
  validates :password,length: {minimum: 8, maximum: 32}
  # パスワードをアルファベット、数字の混合のみ可能にする。
  validates :password,format: {with: /\A[A-Za-z0-9]+Z/}
  has_secure_password
end
