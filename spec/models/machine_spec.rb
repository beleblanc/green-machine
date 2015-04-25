require 'rails_helper'

RSpec.describe Machine, type: :model do
  before do
    @machine = Machine.new(name:"Tomcat1")    
  end
  
  subject {@machine}
  describe "when name is not present" do
    before {@machine.name = " "}
    it { should_not be_valid}
  end
end
