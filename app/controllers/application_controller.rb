class ApplicationController < ActionController::Base

    def mail(id, date)
        mg_client = Mailgun::Client.new(ENV['MAIL_API']) 

        message_params = {
            from: 'nsdlv@mail.com',
            to: 'ri.alvarez.89@hotmail.com',
            text: "El registro con Id: #{id} a sido editado a las #{date}. Si usted no ejecutado la edicion por favor contactar con el Administrador",
            subject: 'Un registro a sido editado'
        }
        mg_client.send_message('sandbox6a461e11df544364bd176a9dd2f0e7f8.mailgun.org', message_params)
    end
end
