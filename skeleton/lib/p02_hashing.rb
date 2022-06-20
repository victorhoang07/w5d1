class Integer
  # Integer#hash already implemented for you

end

class Array
  def hash
    count = 0
    (0...self.length - 1).each do |i|
      count += self[i].hash + i.hash 
    end
    count
  end
end

class String
  def hash
    count = 0 
    arr = split("")
    (0...self.length - 1).each do |i|
      count += arr[i].hash + i.hash
    end
    count
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
