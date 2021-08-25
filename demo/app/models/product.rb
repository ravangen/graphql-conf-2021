Product = Struct.new(:id, :name, :description, :created_at) do
  def initialize(id, name, description, created_at=DateTime.now)
    super
  end

  def body
    # DEPRECATED: Being removed in favour of description attribute
    self[:description]
  end

  def self.find(id)
    # HACK: Hardcoded reesult, this is a demo 🤷‍♂️
    Product.new(
      id,
      "The Hitchhiker's Guide to the Galaxy",
      <<-DESCRIPTION
Seconds before Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhiker's Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.

Together, this dynamic pair begin a journey through space aided by a galaxyful of fellow travelers: Zaphod Beeblebrox--the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian (formerly Tricia McMillan), Zaphod's girlfriend, whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; and Veet Voojagig, a former graduate student obsessed with the disappearance of all the ballpoint pens he's bought over the years.

Where are these pens? Why are we born? Why do we die? For all the answers, stick your thumb to the stars!
      DESCRIPTION
    )
  end
end
