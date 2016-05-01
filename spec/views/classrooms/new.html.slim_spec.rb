require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      :student => nil,
      :course => nil
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

    assert_select "input#classroom_student[name=?]", "classroom[student]"

    assert_select "input#classroom_course[name=?]", "classroom[course]"
    end
  end
end
