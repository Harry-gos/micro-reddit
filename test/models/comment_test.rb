require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "relations between comments, posts, and users" do
    u2 = User.find(2)
    assert u2 == users(:user2), "should get 'user2'"

    c1 = u2.comments.first
    assert c1 == comments(:c1), "should return that user's comment"

    p1 = Post.first
    assert p1.comments.first == c1, "should return the comment 'c1'"

    assert c1.post == p1, "should return the post 'p1'"
  end
end
