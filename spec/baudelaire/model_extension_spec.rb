require 'spec_helper'

describe :symbolize do
  before { @tv_show = TvShow.new }

  describe :setter do
    context "when being nil" do
      before { @tv_show.kind = nil }

      it "should save a nil" do
        expect(@tv_show[:kind]).to be_nil
      end
    end

    context "when being a string" do
      before { @tv_show.kind = 'drama' }

      it "should save a symbol" do
        expect(@tv_show[:kind]).to eq(:drama)
      end
    end

    context "when being a symbol" do
      before { @tv_show.kind = :drama }

      it "should save a symbol" do
        expect(@tv_show[:kind]).to eq(:drama)
      end
    end
  end

  describe :getter do
    context "when being nil" do
      before { @tv_show[:kind] = nil }

      it "should return nil" do
        expect(@tv_show.kind).to be_nil
      end
    end

    context "when being a string" do
      before { @tv_show[:kind] = 'drama' }

      it "should return the symbolized string" do
        expect(@tv_show.kind).to eq(:drama)
      end

      context "which is empty" do
        before { @tv_show.kind = '' }

        it "should return nil" do
          expect(@tv_show.kind).to be_nil
        end
      end
    end

    context "when being a symbol" do
      before { @tv_show[:kind] = :drama }

      it "should return the symbol" do
        expect(@tv_show.kind).to eq(:drama)
      end
    end
  end
end
