class UsersController <ApplicationController
    
    def new
        @user= User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :password))
        if @user.save
          session[:user_id] = @user.id
          flash[:success] = 'Account was successfully created. Join the chat 🎉🎉'
          redirect_to root_path
        else
          render 'new'
        end
      end

end