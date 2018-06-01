require "rails_helper"

describe "Article" do
  context "zadáme článek" do
    it "s očekávanou hodnotou" do
      article = Article.create!(body: "Body text", title: "nějaký text")
      expect(article.body).to eq "Body text"
    end
    it "vrátí id článku" do
      article = Article.create!(body: "Body text", title: "nějaký text")
      expect(article.id).to eq article.id
    end
  end
end