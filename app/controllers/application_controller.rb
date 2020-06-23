class ApplicationController < Sinatra::Base

    set(:views, 'app/views')

    get('/airline-list') do
        @airlines = Airline.all
        erb(:list_airlines)
    end

    get('/get-airline/:id') do
        @airline = Airline.find(params[:id])
        #@tickets = Ticket.where(airline_id: airline.id)
        erb(:single_airline)
    end

    post('/remove/:id') do
        @airline = Airline.find(params[:id])
        @airline.destroy()
    end
end


### HTTP Method  + URL  -> Address/Function Name
### Headers -> Postage
### Body -> Contents