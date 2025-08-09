class ContactMailer < ApplicationMailer
  default to: "team@example.com" # 受信先（後で本番用に変更）
  default from: "no-reply@example.com"

  def notify(subject:, name:, email:, body:)
    @subject = subject
    @name    = name
    @email   = email
    @body    = body
    mail(subject: "[問い合わせ] #{subject} - #{name}")
  end
end
