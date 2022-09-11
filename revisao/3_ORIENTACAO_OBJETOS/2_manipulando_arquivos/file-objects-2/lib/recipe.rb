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
    Recipe.new(title: json['title'],
               description: json['description'],
               ingredients: json['ingredients'],
               cook_time: json['cook_time'],
               featured: json['featured'])
  end



  def save_to_file
  end
end
