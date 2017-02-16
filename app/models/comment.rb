class Comment < ApplicationRecord
  belongs_to :user

  def author_name
  	User.find_by_id(self.user_id).name
  end
end
