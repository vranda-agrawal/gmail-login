class SessionsController < ApplicationController

    def omniauth
        @user=Employee.find_or_create_by(email:auth[:info][:email]) do |u|
            puts "============================================================================================="
            binding.pry
            u.email = auth[:info][:email]
            u.name =auth[:info][:name]
            u.uid = auth[:uid]
            u.provider = SecureRandom.hex(10)
        end

        if @user.valid?
            session[:user_id]=@user.id
            redirect_to photos_path
        else
            flash[:message] ="Credential error"
            redirect_to login_path

        end

    end

    private

    def auth
        request.env['omniauth.auth']
    end

end