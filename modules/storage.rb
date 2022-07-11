module Storage
  def save_to_yaml(object)
    File.open("#{object}.yml", "w") { |file| file.write(object.to_yaml) }
    File.close
  end
end
