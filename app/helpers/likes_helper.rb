module LikesHelper
    def user_liked_resource?(user, resource)
        return false if user.nil?
        user.likes.find_by(likeable: resource)
    end
end