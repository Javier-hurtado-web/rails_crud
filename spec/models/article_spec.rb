require "rails_helper"

RSpec.describe Article, :type => :model do
  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      article = Article.create!(body: "Nejaké body", title: "nějaký text")
      post1 = article.post.create!(text: "first comment")
      post2 = article.post.create!(text: "second comment")
      expect(article.post).to eq([post1, post2])
    end
  end
end