class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(file_path)
    json = File.read(file_path)
    json = JSON.parse(json)

    if json.class == Array
      json.map! { |h| dicionario_para_objeto(h) }
    else
      dicionario_para_objeto(json)
    end

  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |file|
      file.print ''
    end
  end


  private

  def self.dicionario_para_objeto(hash)
    Recipe.new(title: hash['title'],
               description: hash['description'],
               ingredients: hash['ingredients'],
               cook_time: hash['cook_time'],
               featured: hash['featured'])
  end
end
