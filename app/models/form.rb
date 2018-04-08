class Form < ApplicationRecord
  include Formable
  has_many :submissions
end
