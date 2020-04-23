class NotificationMailer < ApplicationMailer
	def send_notification
		# @show = params[:show_id]
		mail(to: "katta.naveenkumar95@gmail.com", subject: "You got a new order!")
	end
end
