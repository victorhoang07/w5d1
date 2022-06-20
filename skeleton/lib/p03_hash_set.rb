class HashSet
  attr_reader :count, :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
      if !include?(key)
      self[key.hash] << key
      @count += 1
      end
    resize! if num_buckets < count
    key

  end

  def include?(key)
    self[key.hash].include?(key)
  end

  def remove(key)
      if self[key.hash].include?(key)
        self[key.hash].delete(key)
        @count -= 1
      end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    self.store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!

  end
end
