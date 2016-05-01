require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = create(:classroom)
    create(:course)
    create(:course)
    create(:course)
    create(:student)
    create(:student)
    create(:student)
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "select#classroom_student[name=?]", "classroom[student]"
      assert_select "select#classroom_course[name=?]", "classroom[course]"
      assert_select "select#classroom_course>option", :count => 3
      assert_select "select#classroom_student>option", :count => 3
    end
  end
end
