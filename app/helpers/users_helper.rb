module UsersHelper
    def avatar(user)
        user.avatar_url || "default.png"
    end
end
