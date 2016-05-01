require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :student => nil,
      :course => nil
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_student[name=?]", "classroom[student]"

      assert_select "input#classroom_course[name=?]", "classroom[course]"
    end
  end
end
