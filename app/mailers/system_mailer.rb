class SystemMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def contact(name, email, text)#looks for view contact.html.erb in system_mailer folder
      @name = name      
      @email = email
      @text = text
      mail(:to=>"gospodarek@gmail.com", :subject=>"[Clean Eats] Message", :from => @email)
    end
    
end
