require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  describe "GET index" do
    it "assigns all posts as @posts" do
      get :index, {}, {}
      expect(response).to be_success
    end

    it "enqueues a NoopWorker" do
      get :index, {}, {}
      expect(NoopWorker.jobs.size).to eq(1)
    end

    it "passes with change{} syntax" do
      expect {
        get :index, {}, {}
      }.to change { NoopWorker.jobs.size }.by(1)
    end

    it "passes with change() syntax" do
      expect {
        get :index, {}, {}
      }.to change(NoopWorker.jobs, :size).by(1)
    end
  end
end
