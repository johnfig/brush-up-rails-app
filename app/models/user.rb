class User < ActiveRecord::Base

attr_accessor :full_name

# Associations

# Validations

# Callbacks
before_save :set_full_name

private

  def set_full_name
    debugger
    self.full_name = "#{self.first_name} #{self.last_name}"
  end
end
