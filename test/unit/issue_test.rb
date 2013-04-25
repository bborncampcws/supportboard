require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "should not save without a description" do
    issue=Issue.new
    assert !issue.save, "saved issue without description"
  end
end

class IssueTest < ActiveSupport::TestCase
  test "should not save with position < 1" do
    issue=Issue.new
    issue.desc="description example"
    issue.position=0
    assert !issue.save, "saved issue with position <1"
  end
end

class IssueTest < ActiveSupport::TestCase
  test "should have default position of 999" do
    issue=Issue.new
    issue.desc="description example"
    issue.save
    assert issue.position=999, "issue not saved with default position: 999"
  end
end

class IssueTest <ActiveSupport::TestCase
  test "controller make issue higher position" do
    issue1=Issue.new
    issue1.desc="orginial issue"
    issue1.position=1
    issue1.save
    
    issue2=Issue.new
    issue2.desc="orginial issue"
    issue2.position=3
    issue2.save 

    get :increase {'id'=>issue2.id} 

    assert issue2.position<issue1.position, "Issue did not get position raised #{issue1.position},#{issue2.position}"
  end
end

class IssueTest <ActiveSupport::TestCase
  test "controller make issue lower position" do
    issue1=Issue.new(:desc=>"orginial issue",:position=>1)
    issue1.save
    
    issue2=Issue.new(:desc=>"orginial issue",:position=>3)
    issue2.save
    
    issue1.decrease
   
    get :decrease {'id'=>issue1.id} 

    issue1.reload
    issue2.reload
    assert issue1.position>issue2.position, "Issue did not get position dropped #{issue1.position},#{issue2.position}"
  end
end

