require 'obscenity/active_model'
class Post < ApplicationRecord
  belongs_to :user, optional: true
  after_create_commit { broadcast_prepend_to 'posts' }
  after_update_commit { broadcast_replace_to 'posts' }
  after_destroy_commit { broadcast_remove_to 'posts' }
  validates :title, :body, obscenity: true
end
