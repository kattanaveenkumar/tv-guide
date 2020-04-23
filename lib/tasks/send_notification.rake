desc 'send notification email'
task send_notification: :environment  do

  @shows = Show.where('start_time < ?', (Time.now+30.minutes).to_datetime)
  if (@shows.count > 0)
    @suscriptors = Suscriptor.where(email_confirmation: true)
    @suscriptors.each do |suscriptor|
        WeeklyDigestMailer.weekly_promos(suscriptor, @promociones).deliver_now
    end
  end

end