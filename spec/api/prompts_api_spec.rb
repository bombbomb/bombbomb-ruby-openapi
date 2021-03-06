=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for BombBomb::PromptsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PromptsApi' do
  before do
    # run before each test
    @instance = BombBomb::PromptsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromptsApi' do
    it 'should create an instact of PromptsApi' do
      expect(@instance).to be_instance_of(BombBomb::PromptsApi)
    end
  end

  # unit tests for create_video_email_prompt
  # Prompts user to send a video
  # Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.
  # @param prompt The Video Email Prompt to be created
  # @param [Hash] opts the optional parameters
  # @return [VideoEmailPrompt]
  describe 'create_video_email_prompt test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video_email_prompt
  # Gets a prompt
  # Gets a prompt
  # @param id The Id of the prompt
  # @param [Hash] opts the optional parameters
  # @return [VideoEmailPrompt]
  describe 'get_video_email_prompt test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for respond_to_video_email_prompt
  # Respond to a prompt
  # Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.
  # @param id The id of the prompt.
  # @param choice The users&#39; selection. Can be: WithVideo, WithoutVideo, Cancel
  # @param [Hash] opts the optional parameters
  # @option opts [String] :video_id The id of the video.
  # @return [VideoEmailPrompt]
  describe 'respond_to_video_email_prompt test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
