class SiteController < ApplicationController
  def index
    @posts = fetch_posts_with_associations
  end

  private

  def fetch_posts_with_associations
    Post.includes(:comments, :user, :likes).ordered_by_creation
  end
end