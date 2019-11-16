class Section < ApplicationRecord
  belongs_to :course
  has_many :lessons



  def next_section
    section = course.sections.where("row_order > ?", self.row_order).rank(:row_order).first
  end
end
