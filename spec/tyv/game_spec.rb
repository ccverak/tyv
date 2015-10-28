require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module Tyv
  describe Game do
    let(:game) { Game.new }

    describe ".number" do
      it "should have the number attribute" do
        game.respond_to?(:number)
      end
      it "should have 4 different digits" do
        pending
      end
    end

    describe ".check" do
      it "should classify certain guess according to number attribute" do
        game.number = "1567"
        game.check("1234").should == "1B"
        game.check("0273").should == "1R"
        game.check("2894").should == ""
        game.check("1567").should == "4B"
        game.check("6751").should == "4R"
      end
    end
  end
end