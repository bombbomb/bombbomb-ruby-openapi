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
  # The Prompt\\Bot class
  class PromptBot
    # The identifier of the prompt bot. Read Only.
    attr_accessor :id

    # The prompt bot's owner. Read Only.
    attr_accessor :user_id

    # The default email being sent to contacts in the prompt bot list.
    attr_accessor :email_id

    # The list to attach the Prompt Bot to.
    attr_accessor :list_id

    # The name of the bot.
    attr_accessor :name

    # The custom contact field value column used for this bot.
    attr_accessor :contact_field_value_column

    # The status of the prompt bot. Read Only.
    attr_accessor :status

    # when the bot started
    attr_accessor :start_date

    # when the bot should finish
    attr_accessor :end_date

    # The type of bot.
    attr_accessor :bot_type_id

    # The template id used to generate the default email.
    attr_accessor :template_id

    # The video that was added to the prompt.
    attr_accessor :video_id

    # The content to use in the email.
    attr_accessor :content

    # The subject of the default email.
    attr_accessor :subject

    # Set when generated as a default by a bot.
    attr_accessor :generated_by


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userId',
        :'email_id' => :'emailId',
        :'list_id' => :'listId',
        :'name' => :'name',
        :'contact_field_value_column' => :'contactFieldValueColumn',
        :'status' => :'status',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'bot_type_id' => :'botTypeId',
        :'template_id' => :'templateId',
        :'video_id' => :'videoId',
        :'content' => :'content',
        :'subject' => :'subject',
        :'generated_by' => :'generatedBy'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'email_id' => :'String',
        :'list_id' => :'String',
        :'name' => :'String',
        :'contact_field_value_column' => :'String',
        :'status' => :'Integer',
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime',
        :'bot_type_id' => :'String',
        :'template_id' => :'String',
        :'video_id' => :'String',
        :'content' => :'String',
        :'subject' => :'String',
        :'generated_by' => :'String'
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

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'emailId')
        self.email_id = attributes[:'emailId']
      end

      if attributes.has_key?(:'listId')
        self.list_id = attributes[:'listId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'contactFieldValueColumn')
        self.contact_field_value_column = attributes[:'contactFieldValueColumn']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'botTypeId')
        self.bot_type_id = attributes[:'botTypeId']
      end

      if attributes.has_key?(:'templateId')
        self.template_id = attributes[:'templateId']
      end

      if attributes.has_key?(:'videoId')
        self.video_id = attributes[:'videoId']
      end

      if attributes.has_key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'generatedBy')
        self.generated_by = attributes[:'generatedBy']
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
          id == o.id &&
          user_id == o.user_id &&
          email_id == o.email_id &&
          list_id == o.list_id &&
          name == o.name &&
          contact_field_value_column == o.contact_field_value_column &&
          status == o.status &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          bot_type_id == o.bot_type_id &&
          template_id == o.template_id &&
          video_id == o.video_id &&
          content == o.content &&
          subject == o.subject &&
          generated_by == o.generated_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user_id, email_id, list_id, name, contact_field_value_column, status, start_date, end_date, bot_type_id, template_id, video_id, content, subject, generated_by].hash
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
