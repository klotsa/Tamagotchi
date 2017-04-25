class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @time_created = Time.new()
    @is_alive = true
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:set_food_level) do |food_level|
    @food_level = food_level
  end

  define_method(:set_activity_level) do |activity_level|
    @activity_level = activity_level
  end

  define_method(:set_sleep_level) do |sleep_level|
    @sleep_level = sleep_level
  end

  define_method(:time_passes) do |current_time = Time.new()|
    current_time = @time_created + 60
    time_passed = current_time - @time_created
    if time_passed >= 60
      @food_level -= 1
      @sleep_level -= 1
    end
    @food_level
  end

  define_method(:is_alive) do
    if @food_level < 1
      @is_alive = false
    elsif @sleep_level < 1
      @is_alive = false
    elsif @activity_level < 1
      @is_alive = false
    else
      @is_alive = true
    end
    @is_alive
  end

  define_method(:play) do
    if @activity_level < 10
      @activity_level = @activity_level + 1
    else
      "I don't wanna play no more"
    end
  end

  define_method(:feed) do
    if @food_level < 10
      @food_level += 1
    else
      "already full"
    end
  end

  define_method(:sleep) do
    if @sleep_level < 10
      @sleep_level += 1
    else
      "I don't wana sleep no more"
    end
  end
end
