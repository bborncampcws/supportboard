class Issue < ActiveRecord::Base
  attr_accessible :desc, :position
  validates :desc, :presence => true
  validates :position, :numericality=>{:greater_than=>-1}
  belongs_to :issue_list
  acts_as_list scope: :issue_list
  before_validation :default_values 
  after_create :set_bottom

  def default_values
    self.position||=0
  end

  def set_bottom
    self.move_to_bottom
  end


end
