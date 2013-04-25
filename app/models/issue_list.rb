class IssueList < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :issues, order: :position

end
