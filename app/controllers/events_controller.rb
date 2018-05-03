class EventsController < ApplicationController
  
  def new
    @event = Event.new
  end 

  def index
    @events =  Event.all
    end

    def create
      @event = current_user.events.build(event_params)
      if @event.save
        current_user.attend(@event)
        flash[:success] = "Event Created"
        redirect_to @event
      else
        
        render :new
      end
    end


    def show
      @event = Event.find(params[:id])
    end 

    def destroy
      @event = Event.find(params[:id])
      authorized?(@event)
      @event.destroy
      flash[:success] = "Event Deleted"
      redirect_to current_user
    end
  
    def attendees
      @event  = Event.find(params[:id])
      @users = @event.attendees.paginate(page: params[:page])
    end
  
  private
  
    def event_params
      params.require(:event).permit(:place, :description, :date)
    end
  
end
