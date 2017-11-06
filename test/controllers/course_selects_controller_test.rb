require 'test_helper'

class CourseSelectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_select = course_selects(:one)
  end

  test "should get index" do
    get course_selects_url
    assert_response :success
  end

  test "should get new" do
    get new_course_select_url
    assert_response :success
  end

  test "should create course_select" do
    assert_difference('CourseSelect.count') do
      post course_selects_url, params: { course_select: { name: @course_select.name, num: @course_select.num, score: @course_select.score, tutor: @course_select.tutor } }
    end

    assert_redirected_to course_select_url(CourseSelect.last)
  end

  test "should show course_select" do
    get course_select_url(@course_select)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_select_url(@course_select)
    assert_response :success
  end

  test "should update course_select" do
    patch course_select_url(@course_select), params: { course_select: { name: @course_select.name, num: @course_select.num, score: @course_select.score, tutor: @course_select.tutor } }
    assert_redirected_to course_select_url(@course_select)
  end

  test "should destroy course_select" do
    assert_difference('CourseSelect.count', -1) do
      delete course_select_url(@course_select)
    end

    assert_redirected_to course_selects_url
  end
end
