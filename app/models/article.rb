class Article < ApplicationRecord
  belongs_to :user

  validates :is_member_only, inclusion: { in: [true, false] }

  def author
    user.username
  end

  def preview
    content.split("\n")[1]
  end

  def date
    created_at.strftime('%B %e, %Y')
  end

end
