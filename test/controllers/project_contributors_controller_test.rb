require 'test_helper'

class ProjectContributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_contributor = project_contributors(:one)
  end

  test "should get index" do
    get project_contributors_url
    assert_response :success
  end

  test "should get new" do
    get new_project_contributor_url
    assert_response :success
  end

  test "should create project_contributor" do
    assert_difference('ProjectContributor.count') do
      post project_contributors_url, params: { project_contributor: { contributor_id: @project_contributor.contributor_id, percentage: @project_contributor.percentage, project_id: @project_contributor.project_id } }
    end

    assert_redirected_to project_contributor_url(ProjectContributor.last)
  end

  test "should show project_contributor" do
    get project_contributor_url(@project_contributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_contributor_url(@project_contributor)
    assert_response :success
  end

  test "should update project_contributor" do
    patch project_contributor_url(@project_contributor), params: { project_contributor: { contributor_id: @project_contributor.contributor_id, percentage: @project_contributor.percentage, project_id: @project_contributor.project_id } }
    assert_redirected_to project_contributor_url(@project_contributor)
  end

  test "should destroy project_contributor" do
    assert_difference('ProjectContributor.count', -1) do
      delete project_contributor_url(@project_contributor)
    end

    assert_redirected_to project_contributors_url
  end
end
