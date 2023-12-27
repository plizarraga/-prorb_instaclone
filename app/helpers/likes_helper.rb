module LikesHelper
    def user_liked_post?(user, post)
        return false if user.nil?
        user.likes.find_by(likeable: post)
    end
end