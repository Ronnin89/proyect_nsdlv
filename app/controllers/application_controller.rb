class ApplicationController < ActionController::Base

    def mail(id, date)
        mg_client = Mailgun::Client.new('5e6382d473d3a93953a3e23dc4f9a9aa-a09d6718-401df36d') 

        message_params = {
            from: 'nsdlv@mail.com',
            to: 'ri.alvarez.89@hotmail.com',
            text: "El registro con Id: #{id} a sido editado a las #{date}. Si usted no ejecutado la edicion por favor contactar con el Administrador",
            subject: 'Un registro a sido editado'
        }
        mg_client.send_message('sandbox496c5651181944af891f2975d4f3bc6c.mailgun.org', message_params)
    end
end
