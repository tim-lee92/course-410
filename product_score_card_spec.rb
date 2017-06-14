require 'minitest/autorun'
require_relative 'multiset'
require 'set'
require_relative 'product_score_card'

class ProductScoreCardTest < MiniTest::Unit::TestCase

  def test_equal
    assert_equal ProductScoreCard.new(["Quality", "Design"]), ProductScoreCard.new(["Design", "Quality"])
  end

  def test_no_duplicates
    assert_equal ProductScoreCard.new(["Quality", "Quality"]).parameters,ProductScoreCard.new(["Quality"]).parameters
  end

  def test_votes
    assert_equal 2,ProductScoreCard.new(["Quality", "Quality"]).votes("Quality")
    assert_equal 0,ProductScoreCard.new(["Quality", "Quality", "Design"]).votes("Durability")
  end

  def test_remove
    assert_equal ProductScoreCard.new(["Quality"]), ProductScoreCard.new(["Quality", "Quality"]).downvoted("Quality")
  end

  def test_add
    psc = ProductScoreCard.new(["Quality"])
    psc.upvoted("Quality")
    psc.upvoted("Quality")
    psc.upvoted("Design")
    psc.upvoted("Durability")

    assert_equal 3, psc.votes("Quality")
    assert_equal 1, psc.votes("Design")
    assert_equal 1, psc.votes("Durability")
  end

  def test_score_card
    psc = ProductScoreCard.new(["Quality"])
    psc.upvoted("Quality")
    psc.upvoted("Quality")
    psc.upvoted("Design")
    psc.upvoted("Durability")

    score = 3*ProductScoreCard::WT_QUALITY + 1*ProductScoreCard::WT_DESIGN + 1*ProductScoreCard::WT_DURABILITY
    assert_equal score, psc.score_card

  end

end
