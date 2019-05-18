module Helper
  def save
    self.class.all << self
  end
end
