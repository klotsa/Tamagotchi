require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end

  it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
  end
end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()  #decide what trigger you will use to make time pass
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#feed") do
    it("Food level goes up by 1 when fed") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(9)
      expect(my_pet.feed()).to(eq(10))
    end
  end

  describe("#sleep") do
    it("Sleep level goes up by 1 during sleep") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_sleep_level(9)
      expect(my_pet.sleep()).to(eq(10))
    end
    it("Sleep level does not go up if it is already at 10") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_sleep_level(10)
      expect(my_pet.sleep()).to(eq("I don't wana sleep no more"))
    end
  end

  describe("#play") do
    it("Activity level goes up by 1 during play") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_activity_level(9)
      expect(my_pet.play()).to(eq(10))
    end
  end
end
