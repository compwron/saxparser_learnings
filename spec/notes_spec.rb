require "spec_helper"

describe File do
  describe "self.parse" do
    it "parses" do
      xml = File.read(
        File.expand_path("../sample.xml", __FILE__)
      )

      file = File.parse(xml)
      # TODO fix .should to expects().to
      file.notes.count.should == 1

      note = file.notes.last
      note.to.should == "Foo"
      note.from.should == "Bar"
      note.apples.size.should == 2
      note.apples.first.should == "orange"
      note.apples.last.should == "banana"

      # entry.amount.should == Money.new(2_31, "GBP")
      # entry.iban.should be_blank
    end
  end
end