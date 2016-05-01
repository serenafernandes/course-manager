require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    @classroom = build(:classroom)
    create(:course)
    create(:course)
    create(:course)
    create(:student)
    create(:student)
    create(:student)
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "select#classroom_student[name=?]", "classroom[student]"
      assert_select "select#classroom_course[name=?]", "classroom[course]"
      assert_select "select#classroom_course>option", :count => 3
      assert_select "select#classroom_student>option", :count => 3
    end
  end
end
