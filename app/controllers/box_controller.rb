

class BoxController < ApplicationController
    require 'mailgun'
    def mail
    end 
    def write
        @title= params[:title]
        @middle = params[:middle]
        @contents = params[:contents]	
        
        mg_client = Mailgun::Client.new("key-891095d2edbf3ef754346e87eaa9e365")

        message_params =  {
                   from: 'wkfgowltn@likelion.org',
                   to:   @title,
                   subject: @middle,
                   text: @contents,
                  }

         result = mg_client.send_message('sandboxeb6792fb51fd407e9eb0b5144c736c2b.mailgun.org', message_params).to_h!

        message_id = result['id']
        message = result['message']
        
        
        
        
        
        end 
end 

