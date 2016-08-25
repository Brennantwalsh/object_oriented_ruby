 module StoreFront
  class Food < Item
    def initalize(hash)
      super
      @shelf_life = hash[:shelf_life]
    end
  end
end