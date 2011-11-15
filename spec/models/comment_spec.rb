require 'spec_helper'

describe Comment do
  context "[create]" do
    let(:current_time) { Time.mktime 2011, 11, 16 }

    it "should set created_at field" do
      Time.stub(:now).and_return(current_time)
      comment = Comment.create(:article => Factory(:article))

      comment.created_at.should == current_time
    end
  end
end
