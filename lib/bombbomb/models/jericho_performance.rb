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

require 'date'

module BombBomb
  # Reports on the aggregate performance of a Jericho send
  class JerichoPerformance
    # The jericho id
    attr_accessor :jericho_id

    # The number of emails sent
    attr_accessor :sent

    # The unique number of people that viewed the email
    attr_accessor :unique_views

    # The unique number of people that visited the landing page
    attr_accessor :unique_landing_page_views

    # The total number of people that visisted the landing page
    attr_accessor :landing_page_views

    # The number of emails delivered, likely less than sent due to bounces, and other common delivery issues
    attr_accessor :delivered

    # The number of emails that bounced as undeliverable
    attr_accessor :bounce

    # The total number of times the emails were viewed
    attr_accessor :open

    # The total number of times links in the emails were clicked
    attr_accessor :click

    # The total number of times videos in the emails were played
    attr_accessor :video_play

    # The number of recipients that marked the message as abusive
    attr_accessor :abuse_complaints

    # The total number of contacts submitted to be sent, may be more than was sent to
    attr_accessor :contacts

    # The total number of prompts sent to members of the client group
    attr_accessor :prompts_sent

    # The total number of prompts sent that included a personal recording
    attr_accessor :prompts_with_recordings

    # The total number of members that chose not to send a prompt
    attr_accessor :prompts_opted_out


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'jericho_id' => :'jerichoId',
        :'sent' => :'sent',
        :'unique_views' => :'uniqueViews',
        :'unique_landing_page_views' => :'uniqueLandingPageViews',
        :'landing_page_views' => :'landingPageViews',
        :'delivered' => :'delivered',
        :'bounce' => :'bounce',
        :'open' => :'open',
        :'click' => :'click',
        :'video_play' => :'videoPlay',
        :'abuse_complaints' => :'abuseComplaints',
        :'contacts' => :'contacts',
        :'prompts_sent' => :'promptsSent',
        :'prompts_with_recordings' => :'promptsWithRecordings',
        :'prompts_opted_out' => :'promptsOptedOut'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'jericho_id' => :'Integer',
        :'sent' => :'Integer',
        :'unique_views' => :'Integer',
        :'unique_landing_page_views' => :'Integer',
        :'landing_page_views' => :'Integer',
        :'delivered' => :'Integer',
        :'bounce' => :'Integer',
        :'open' => :'Integer',
        :'click' => :'Integer',
        :'video_play' => :'Integer',
        :'abuse_complaints' => :'Integer',
        :'contacts' => :'Integer',
        :'prompts_sent' => :'Integer',
        :'prompts_with_recordings' => :'Integer',
        :'prompts_opted_out' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'jerichoId')
        self.jericho_id = attributes[:'jerichoId']
      end

      if attributes.has_key?(:'sent')
        self.sent = attributes[:'sent']
      end

      if attributes.has_key?(:'uniqueViews')
        self.unique_views = attributes[:'uniqueViews']
      end

      if attributes.has_key?(:'uniqueLandingPageViews')
        self.unique_landing_page_views = attributes[:'uniqueLandingPageViews']
      end

      if attributes.has_key?(:'landingPageViews')
        self.landing_page_views = attributes[:'landingPageViews']
      end

      if attributes.has_key?(:'delivered')
        self.delivered = attributes[:'delivered']
      end

      if attributes.has_key?(:'bounce')
        self.bounce = attributes[:'bounce']
      end

      if attributes.has_key?(:'open')
        self.open = attributes[:'open']
      end

      if attributes.has_key?(:'click')
        self.click = attributes[:'click']
      end

      if attributes.has_key?(:'videoPlay')
        self.video_play = attributes[:'videoPlay']
      end

      if attributes.has_key?(:'abuseComplaints')
        self.abuse_complaints = attributes[:'abuseComplaints']
      end

      if attributes.has_key?(:'contacts')
        self.contacts = attributes[:'contacts']
      end

      if attributes.has_key?(:'promptsSent')
        self.prompts_sent = attributes[:'promptsSent']
      end

      if attributes.has_key?(:'promptsWithRecordings')
        self.prompts_with_recordings = attributes[:'promptsWithRecordings']
      end

      if attributes.has_key?(:'promptsOptedOut')
        self.prompts_opted_out = attributes[:'promptsOptedOut']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          jericho_id == o.jericho_id &&
          sent == o.sent &&
          unique_views == o.unique_views &&
          unique_landing_page_views == o.unique_landing_page_views &&
          landing_page_views == o.landing_page_views &&
          delivered == o.delivered &&
          bounce == o.bounce &&
          open == o.open &&
          click == o.click &&
          video_play == o.video_play &&
          abuse_complaints == o.abuse_complaints &&
          contacts == o.contacts &&
          prompts_sent == o.prompts_sent &&
          prompts_with_recordings == o.prompts_with_recordings &&
          prompts_opted_out == o.prompts_opted_out
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [jericho_id, sent, unique_views, unique_landing_page_views, landing_page_views, delivered, bounce, open, click, video_play, abuse_complaints, contacts, prompts_sent, prompts_with_recordings, prompts_opted_out].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BombBomb.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
