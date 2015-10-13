module ApplicationHelper

def error_panel( f )
  if f.object.errors.size >= 1  
    msg = "There was 1 error." if f.object.errors.size == 1
    msg = "There were #{f.object.errors.size} errors." if f.object.errors.size > 1
    flash[:error] = f.object.class.name + " could not be saved.  " + msg
    f.inputs "Error List" do
      f.object.errors.full_messages.join(' .... ')
    end
  end
end

end
