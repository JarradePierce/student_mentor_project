module SessionsHelper
  def log_in(user)
    session[:user_id] = user.user_id
  end

  def student_current_user
    if session[:user_id]
      Student.find(session[:user_id])
    else
      false
    end  
  end 

  def mentor_current_user
    if session[:user_id]
      Mentor.find(session[:user_id])
    else
      false
    end  
  end 
end
