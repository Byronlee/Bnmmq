class Email < ActionMailer::Base

  include Singleton

  default from: 'ginchenorlee@sina.com'
 
  # this url shoul form UI that user input
  def launch message
    mail(to: "lbyronlee@gmail.com", subject: 'Bnmmq Service alarm Email') do | format |
      format.html { render :text => message }
    end
  end
end
