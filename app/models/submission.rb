class Submission < ApplicationRecord
  include Submittable
  belongs_to :form
end
