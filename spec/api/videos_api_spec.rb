=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.22196

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

# Unit tests for BombBomb::VideosApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VideosApi' do
  before do
    # run before each test
    @instance = BombBomb::VideosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VideosApi' do
    it 'should create an instact of VideosApi' do
      expect(@instance).to be_instance_of(BombBomb::VideosApi)
    end
  end

  # unit tests for get_video_recorder
  # Get Live Video Recorder HTML
  # Returns an object with a number of properties to help you put a video recorder on your site.         This is to be used in conjunction with the VideoRecordedLive call one the user has confirmed in your UI that         the video is how they want it.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width The width of the recorder to present.
  # @option opts [String] :video_id The id of the video to record
  # @return [VideoRecorderMethodResponse]
  describe 'get_video_recorder test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for mark_live_recording_complete
  # Completes a live recording
  # Used in conjunction with the live recorder method to mark a video recording as complete.
  # @param video_id The id of the video to mark as done.
  # @param filename The filename that was chosen as the final video.
  # @param title The title to give the video
  # @param [Hash] opts the optional parameters
  # @return [VideoPublicRepresentation]
  describe 'mark_live_recording_complete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sign_upload
  # Generate Signed Url
  # Generates a signed url to be used for video uploads.
  # @param policy The policy to sign
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :v4 Whether to do v4 signing
  # @return [String]
  describe 'sign_upload test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
