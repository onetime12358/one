package com.text.bean;

public class recipe {
	private String name;
	private String description;
	private String image;
	private String ingredients;
	private String instructions;
	private String category;
	private String time;
	private String servings;
	private String author;
	private String id;

    public recipe(String name, String description, String image, String ingredients, String instructions, String category, String time, String servings, String author, String id) {
        this.name = name;
        this.description = description;
        this.image = image;
        this.ingredients = ingredients;
        this.instructions = instructions;
        this.category = category;
        this.time = time;
        this.servings = servings;
        this.author = author;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getServings() {
        return servings;
    }

    public void setServings(String servings) {
        this.servings = servings;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "recipe{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", ingredients='" + ingredients + '\'' +
                ", instructions='" + instructions + '\'' +
                ", category='" + category + '\'' +
                ", time='" + time + '\'' +
                ", servings='" + servings + '\'' +
                ", author='" + author + '\'' +
                ", id='" + id + '\'' +
                '}';
    }

    public recipe() {

    }
}
