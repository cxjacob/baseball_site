class InquiriesController < ApplicationController
  def create
    subject = params[:subject]
    name    = params[:name]
    email   = params[:email]
    body    = params[:body]

    # バリデーション（超簡易）
    if name.blank? || email.blank? || body.blank?
      redirect_to contact_path, alert: "必須項目が未入力です。" and return
    end

    ContactMailer.notify(subject: subject, name: name, email: email, body: body).deliver_now
    redirect_to thanks_path, notice: "お問い合わせを送信しました。"
  end
end


