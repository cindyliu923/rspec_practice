require_relative '../lib/cart.rb'

describe Cart do

  before do
    @cart = Cart.new
  end

  context "第一種情境：不打折" do

    it "第一集買 1 本" do
      @cart.add({ "1st": 1, "2nd": 0, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(100)
    end

    it "第一集買 3 本" do
      @cart.add({ "1st": 3, "2nd": 0, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(300)
    end

  end

  context "第二種情境：打 5% 折扣" do

    it "第一集買 1 本、第二集買 1 本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(190)
    end

    it "第一集買 2 本、第二集買 2 本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(380)
    end

    it "第一集買 1 本、第二集買 2 本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(290)
    end

    it "第一集買 2 本、第二集買 3 本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(480)
    end

  end

  context "第三種情境：打 10% 折扣" do

    it "第一集買 1 本、第二集買 1 本、第三集買 1 本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(270)
    end

    it "第一集買 2 本、第二集買 2 本、第三集買 2 本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(540)
    end

    it "第一集買 2 本、第二集買 1 本、第三集買 1 本" do
      @cart.add({ "1st": 2, "2nd": 1, "3rd": 1, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(370)
    end

    it "第一集買 3 本、第二集買 2 本、第三集買 2 本" do
      @cart.add({ "1st": 3, "2nd": 2, "3rd": 2, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(640)
    end

  end

  context "第四種情境：打 15% 折扣" do

    it "第一集買 1 本、第二集買 1 本、第三集買 1 本、第四集買 1 本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 1, "5th": 0 })
      expect(@cart.calculate).to eq(340)
    end

    it "第一集買 2 本、第二集買 2 本、第三集買 2 本、第四集買 2 本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 2, "5th": 0 })
      expect(@cart.calculate).to eq(680)
    end

    it "第一集買 2 本、第二集買 1 本、第三集買 1 本、第四集買 1 本" do
      @cart.add({ "1st": 2, "2nd": 1, "3rd": 1, "4th": 1, "5th": 0 })
      expect(@cart.calculate).to eq(440)
    end

    it "第一集買 3 本、第二集買 2 本、第三集買 2 本、第四集買 2 本" do
      @cart.add({ "1st": 3, "2nd": 2, "3rd": 2, "4th": 2, "5th": 0 })
      expect(@cart.calculate).to eq(780)
    end

  end

  context "第五種情境：打 20% 折扣" do

    it "第一集買 1 本、第二集買 1 本、第三集買 1 本、第四集買 1 本、第五集買 1 本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 1, "5th": 1 })
      expect(@cart.calculate).to eq(400)
    end

    it "第一集買 2 本、第二集買 2 本、第三集買 2 本、第四集買 2 本、第五集買 2 本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 2, "5th": 2 })
      expect(@cart.calculate).to eq(800)
    end

    it "第一集買 2 本、第二集買 1 本、第三集買 1 本、第四集買 1 本、第五集買 1 本" do
      @cart.add({ "1st": 2, "2nd": 1, "3rd": 1, "4th": 1, "5th": 1 })
      expect(@cart.calculate).to eq(500)
    end

    it "第一集買 3 本、第二集買 2 本、第三集買 2 本、第四集買 2 本、第五集買 2 本" do
      @cart.add({ "1st": 3, "2nd": 2, "3rd": 2, "4th": 2, "5th": 2 })
      expect(@cart.calculate).to eq(900)
    end

  end

end