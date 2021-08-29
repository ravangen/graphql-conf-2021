Product = Struct.new(:id, :name, :description, :cost_of_goods_manufactured, :created_at) do
  def initialize(id, name, description, cost_of_goods_manufactured, created_at=DateTime.now)
    super
  end

  def body
    # DEPRECATED: Being removed in favour of description attribute
    self[:description]
  end

  # HACK: Mimic ActiveRecord interface, this is a demo 🤷‍♂️

  def self.all
    [Product.find("Don't Panic")]
  end

  def self.find(id)
    description = <<-DESCRIPTION
Seconds before Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhiker's Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.

Together, this dynamic pair begin a journey through space aided by a galaxyful of fellow travelers: Zaphod Beeblebrox--the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian (formerly Tricia McMillan), Zaphod's girlfriend, whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; and Veet Voojagig, a former graduate student obsessed with the disappearance of all the ballpoint pens he's bought over the years.

Where are these pens? Why are we born? Why do we die? For all the answers, stick your thumb to the stars!
    DESCRIPTION
    Product.new(
      id,
      "The Hitchhiker's Guide to the Galaxy",
      description,
      1.23
    )
  end
end
