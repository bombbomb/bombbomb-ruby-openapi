=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.24005

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

# Unit tests for BombBomb::AccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @instance = BombBomb::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instact of AccountsApi' do
      expect(@instance).to be_instance_of(BombBomb::AccountsApi)
    end
  end

  # unit tests for account_details
  # Get account details.
  # Get the details of the user&#39;s account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email Your login email address
  # @option opts [String] :pw Your password
  # @option opts [String] :api_key Your Api Key
  # @return [nil]
  describe 'account_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_account
  # Create Account
  # Creates a new BombBomb account. This method is currently only available to paid seat admins.
  # @param team_id The team id
  # @param first_name First name of the user.
  # @param last_name Last name of the user.
  # @param email_address Email address of the user.
  # @param company_name Company of the user.
  # @param phone Phone number of the user.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country Country of the user.
  # @option opts [String] :industry Industry of the user.
  # @option opts [String] :address Street Address of the user.
  # @option opts [String] :city City of the user.
  # @option opts [String] :postal_code Postal/Zip code of the user.
  # @return [String]
  describe 'create_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for subscription_purchase_allowed
  # Check if subscription purchase allowed.
  # Check whether the user can purchase a subscription.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email Your login email address
  # @option opts [String] :pw Your password
  # @option opts [String] :api_key Your Api Key
  # @return [nil]
  describe 'subscription_purchase_allowed test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end