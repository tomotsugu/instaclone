class PictureMailer < ApplicationMailer
  def picture_mail(user, picture)
    @user = user
    @picture = picture
    mail to: @user.email, subject: "Picture投稿されました"
  end
end
