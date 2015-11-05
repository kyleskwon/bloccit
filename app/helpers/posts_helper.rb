module PostsHelper
  def user_is_authorized_to_update_posts?(post)
    current_user && (current_user == post.user || current_user.moderator? || current_user.admin?)
  end

  def user_is_authorized_to_destroy_posts?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
end
