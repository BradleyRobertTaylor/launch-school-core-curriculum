class Robot
  @robots = []

  def name
    return @name if @name
    loop do
      @name = generate_name
      break unless @robots.include?(@name)
    end
    @robots << @name
    @name
  end

  def reset
    @robots.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    2.times { name << random_letter }
    3.times { name << random_num }
    name
  end

  def random_letter
    ('A'..'Z').to_a.sample
  end

  def random_num
    rand(0..9).to_s
  end
end
