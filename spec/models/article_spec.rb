require 'spec_helper'

describe Article do
  context "[create]" do
    let(:current_time) { Time.mktime 2011, 11, 16 }

    it "should set created_at field" do
      Time.stub(:now).and_return(current_time)
      Factory(:article).created_at.should == current_time
    end
  end
end
