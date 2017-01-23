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

require 'date'

module BombBomb

  class JerichoConfiguration
    attr_accessor :id

    attr_accessor :client_group_id

    # When the email should be sent.
    attr_accessor :send_date

    # Video Prompt: Determines whether this is a static or prompted send.
    attr_accessor :is_prompt

    # Controls whether or not the content is printed into a template.
    attr_accessor :print_to_template

    # Static send: The Email to send on behalf of the group members.
    attr_accessor :email_id

    # Video Prompt: The Video to include as an example for prompted users.
    attr_accessor :example_video_id

    # The Video to include in the tracking follow up.
    attr_accessor :follow_up_video_id

    # Video Prompt: The intro text directed toward prompted users.
    attr_accessor :prompt_intro

    # Video Prompt: The subject line prompting the user to record a video.
    attr_accessor :prompt_subject

    # Video Prompt: The HTML body of the email prompting the user to record a video.
    attr_accessor :prompt_body

    # Video Prompt: The subject line of the final sent email
    attr_accessor :email_subject

    # Video Prompt: The HTML body of the final sent email.
    attr_accessor :email_body

    # Video Prompt: Whether to send the final email if no video was recorded.
    attr_accessor :send_without_video

    # The state of the send.
    attr_accessor :status


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'client_group_id' => :'clientGroupId',
        :'send_date' => :'sendDate',
        :'is_prompt' => :'isPrompt',
        :'print_to_template' => :'printToTemplate',
        :'email_id' => :'emailId',
        :'example_video_id' => :'exampleVideoId',
        :'follow_up_video_id' => :'followUpVideoId',
        :'prompt_intro' => :'promptIntro',
        :'prompt_subject' => :'promptSubject',
        :'prompt_body' => :'promptBody',
        :'email_subject' => :'emailSubject',
        :'email_body' => :'emailBody',
        :'send_without_video' => :'sendWithoutVideo',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'client_group_id' => :'String',
        :'send_date' => :'DateTime',
        :'is_prompt' => :'BOOLEAN',
        :'print_to_template' => :'BOOLEAN',
        :'email_id' => :'String',
        :'example_video_id' => :'String',
        :'follow_up_video_id' => :'String',
        :'prompt_intro' => :'String',
        :'prompt_subject' => :'String',
        :'prompt_body' => :'String',
        :'email_subject' => :'String',
        :'email_body' => :'String',
        :'send_without_video' => :'BOOLEAN',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'clientGroupId')
        self.client_group_id = attributes[:'clientGroupId']
      end

      if attributes.has_key?(:'sendDate')
        self.send_date = attributes[:'sendDate']
      end

      if attributes.has_key?(:'isPrompt')
        self.is_prompt = attributes[:'isPrompt']
      end

      if attributes.has_key?(:'printToTemplate')
        self.print_to_template = attributes[:'printToTemplate']
      end

      if attributes.has_key?(:'emailId')
        self.email_id = attributes[:'emailId']
      end

      if attributes.has_key?(:'exampleVideoId')
        self.example_video_id = attributes[:'exampleVideoId']
      end

      if attributes.has_key?(:'followUpVideoId')
        self.follow_up_video_id = attributes[:'followUpVideoId']
      end

      if attributes.has_key?(:'promptIntro')
        self.prompt_intro = attributes[:'promptIntro']
      end

      if attributes.has_key?(:'promptSubject')
        self.prompt_subject = attributes[:'promptSubject']
      end

      if attributes.has_key?(:'promptBody')
        self.prompt_body = attributes[:'promptBody']
      end

      if attributes.has_key?(:'emailSubject')
        self.email_subject = attributes[:'emailSubject']
      end

      if attributes.has_key?(:'emailBody')
        self.email_body = attributes[:'emailBody']
      end

      if attributes.has_key?(:'sendWithoutVideo')
        self.send_without_video = attributes[:'sendWithoutVideo']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
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
      return false if @is_prompt.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          client_group_id == o.client_group_id &&
          send_date == o.send_date &&
          is_prompt == o.is_prompt &&
          print_to_template == o.print_to_template &&
          email_id == o.email_id &&
          example_video_id == o.example_video_id &&
          follow_up_video_id == o.follow_up_video_id &&
          prompt_intro == o.prompt_intro &&
          prompt_subject == o.prompt_subject &&
          prompt_body == o.prompt_body &&
          email_subject == o.email_subject &&
          email_body == o.email_body &&
          send_without_video == o.send_without_video &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, client_group_id, send_date, is_prompt, print_to_template, email_id, example_video_id, follow_up_video_id, prompt_intro, prompt_subject, prompt_body, email_subject, email_body, send_without_video, status].hash
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
