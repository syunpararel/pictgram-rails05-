class User < ApplicationRecord
  has_secure_password
  # 名前の長さに制限を加える。
  validates :name, presence: true, length: { maximum: 15 }
  # # メールアドレスの正規表現を追加する。exit
  validates :email, presence: true, format: { with:/\A\S+@\S+\.\S+\Z/ }
  # # パスワード文字数を８〜３２文字と制限をかける。
  validates :password, length: { in: 8..32 }
  # # パスワードをアルファベット、数字の混合のみ可能にする。
  validates :password, format: { with: /\A[A-Za-z0-9]+\Z/ }
end
