module Validation
  def validate_string(value, name)
    if !value.is_a?(String)
      raise ArgumentError.new("#{name} should be a string")
    end
  end

  def validate_number(value, name)
    if !value.is_a?(Integer)
      raise ArgumentError.new("#{name} should be an integer")
    end
  end

  def validate_positive(value, name)
    if value <= 0
      raise ArgumentError.new("#{name} should be greater than 0")
    end
  end

  def validate_biography(value, name)
    if !value.is_a?(String) || value != ''
      raise ArgumentError.new("#{name} should be either a string or empty")
    end
  end

  def validate_class_author(object_author)
    if !object_author.is_a?(Author)
      raise ArgumentError.new('meaning author it is not a class object Author')
    end
  end

  def validate_class_book(object_book)
    if !object_book.is_a?(Book)
      raise ArgumentError.new('meaning book it is not a class object Book')
    end
  end

  def validate_class_reader(object_reader)
    if !object_reader.is_a?(Reader)
      raise ArgumentError.new('meaning reader it is not a class object Reader')
    end
  end

  def validate_class_date(object_date)
    if !object_date.is_a?(Date)
      raise ArgumentError.new('meaning date it is not a class object Date')
    end
  end
end
