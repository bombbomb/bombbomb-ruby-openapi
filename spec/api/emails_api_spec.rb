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

# Unit tests for BombBomb::EmailsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmailsApi' do
  before do
    # run before each test
    @instance = BombBomb::EmailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailsApi' do
    it 'should create an instact of EmailsApi' do
      expect(@instance).to be_instance_of(BombBomb::EmailsApi)
    end
  end

  # unit tests for create_printing_press_email
  # Create an Email with Printing Press
  # Prints an email using the template id and content to the users account.If a video id, is include it will replace any video placeholders with that video.
  # @param template_id The template id to be printed.
  # @param content The content of the email.
  # @param replace Set whether to replace video placeholders with video id.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :video_id A video to replace video place holders with.
  # @option opts [String] :subject_line The subject line to be printed.
  # @return [nil]
  describe 'create_printing_press_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_tracking
  # Get Email Tracking
  # Get Tracking data for all sends of an Email
  # @param email_id ID of the email
  # @param [Hash] opts the optional parameters
  # @option opts [String] :job_id ID of the Job (or null for all jobs)
  # @return [nil]
  describe 'get_email_tracking test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_tracking_interactions
  # Get Email Tracking Interactions
  # Get Contact detail interactions for an Email
  # @param email_id ID of the email
  # @param [Hash] opts the optional parameters
  # @option opts [String] :job_id ID of the Job (or null for all jobs)
  # @option opts [String] :interaction_type Interaction type to order and filter by
  # @option opts [String] :search_term Search term to filer by
  # @return [nil]
  describe 'get_email_tracking_interactions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_hourly_email_tracking
  # Get Hourly Email Tracking
  # Get Tracking data for an Email,             broken down by the hour and filterable by an Interaction type
  # @param email_id ID of the email
  # @param [Hash] opts the optional parameters
  # @option opts [String] :job_id ID of the Job (or null for all jobs)
  # @option opts [String] :interaction_type Interaction type to filter by
  # @return [nil]
  describe 'get_hourly_email_tracking test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
