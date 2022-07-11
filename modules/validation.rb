module Validation
  def validate_string!(value, name)
    if !value.is_a?(String)
      raise ArgumentError.new("#{name} should be a string")
    end
  end

  def validate_number!(value, name)
    if !value.is_a?(Integer)
      raise ArgumentError.new("#{name} should be an integer")
    end
  end

  def validate_positive!(value, name)
    if value <= 0
      raise ArgumentError.new("#{name} should be greater than 0")
    end
  end

  def validate_class!(object, class_name, object_name)
    if !object.is_a?(class_name)
      raise ArgumentError.new("#{object_name} is not a #{class_name} class")
    end
  end
end
