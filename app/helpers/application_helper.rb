module ApplicationHelper

  #Returns the class "active" when controller is same to active view
  def active_if(options)
    if params.merge(options) == params
      'active'
    end
  end

end
