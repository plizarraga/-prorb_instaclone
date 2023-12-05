module LikesHelper
    def user_liked_post?(user, post)
        user.likes.exists?(post: post)
    end
end
