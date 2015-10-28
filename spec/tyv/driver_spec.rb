require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module Tyv
  describe Driver do
    describe ".guess" do
      let(:game) { Game.new }
      it "should follow the logic of the game" do
        game.number = "1234"
        driver = Driver.new(:provider => nil, :game => game)
        driver.stub!(:input).and_return("1234")
        game.should_receive(:check).with("1234").and_return("4B")
        driver.should_receive(:output).with("You won!")

        driver.guess
      end
    end
  end
end