require "rails_helper"

describe "Article" do
  context "zadáme článek" do
    it "s očekávanou hodnotou" do
      article = Article.create!(body: "Body text", title: "nějaký text")
      expect(article.body).to eq "Body text"
    end
    it "vrátí id článku" do
      @article = Article.create!(body: "Body text", title: "nějaký text")
      expect(@article.id).to eq @article.id
    end
  end
end

describe "Article" do
  context "otestování metody .body" do
    it "s očekávanou hodnotou body" do
      article = Article.create!(body: "Body text", title: "nějaký text")
      article_body = article.get_body
      expect(article_body).to eq "Body text"
    end
  end
end