class FormValue < ActiveRecord::Base
  belongs_to :form_field
  belongs_to :submittable, polymorphic: true

  validate :value_is_valid

  private

  def value_is_valid
    form_field.validate_value(self)
  end
end
