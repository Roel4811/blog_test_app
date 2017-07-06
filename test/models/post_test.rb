require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "trying to find validations" do
    post = Post.new
    post.valid?(:title)
    puts
    puts "--after calling valid?(:title)"
    puts post.errors.full_messages
    post.valid?
    binding.pry
    puts "--after calling valid? again"
    puts post.errors.full_messages
  end
end
