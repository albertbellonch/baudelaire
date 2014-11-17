require 'spec_helper'

describe :symbolize do
  before { @tv_show = TvShow.new }

  describe :setter do
    context "when being nil" do
      before { @tv_show.kind = nil }

      it "should save a nil" do
        @tv_show[:kind].should be_nil
      end
    end

    context "when being a string" do
      before { @tv_show.kind = 'drama' }

      it "should save a symbol" do
        @tv_show[:kind].should == :drama
      end
    end

    context "when being a symbol" do
      before { @tv_show.kind = :drama }

      it "should save a symbol" do
        @tv_show[:kind].should == :drama
      end
    end
  end

  describe :getter do
    context "when being nil" do
      before { @tv_show[:kind] = nil }

      it "should return nil" do
        @tv_show.kind.should be_nil
      end
    end

    context "when being a string" do
      before { @tv_show[:kind] = 'drama' }

      it "should return the symbolized string" do
        @tv_show.kind.should == :drama
      end
    end

    context "when being a symbol" do
      before { @tv_show[:kind] = :drama }

      it "should return the symbol" do
        @tv_show.kind.should == :drama
      end
    end
  end
end
