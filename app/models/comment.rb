class Comment < ApplicationRecord
  belongs_to :user, class_name: "Comment"
  belongs_to :post
end
