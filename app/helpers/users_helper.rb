module UsersHelper
  def user_has_any_posts_or_comments?
    # current_user.posts > 0 || current_user.comments > 0
  end

# this is the helper method
  def render_posts_for(user)
    if user.posts.any?
      render(user.posts).html_safe
    else
      "<p>#{user.name} hasn't submitted any posts yet.</p>".html_safe
    end
  end

  def render_comments_for(user)
    if user.comments.any?
      render(user.comments).html_safe
    else
      "<p>#{user.name} hasn't submitted any comments yet.</p>".html_safe
    end
  end

  def render_favorite_posts_for(user)
    if user.favorites.any?
      render(user.favorites.map {|favorite| favorite.post}).html_safe
    else
      "<p>#{user.name} hasn't favorited any posts yet.</p>".html_safe
    end
  end
end
