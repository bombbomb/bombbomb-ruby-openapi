=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.20679

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
  # Configures a single prompt which asks a user to record a video into an outgoing email.
  class VideoEmailPrompt
    # The identifier of the prompt. Read Only.
    attr_accessor :id

    # The prompt's owner. Read Only.
    attr_accessor :user_id

    # Optional. The email template to be used in the sent email, if none supplied, the users' default will be applied.
    attr_accessor :template_id

    # The subject line of the final email
    attr_accessor :email_subject_line

    # The HTML content of the final email
    attr_accessor :email_content

    # Email addresses to send the final email to, can be mixed with listIds.
    attr_accessor :to_email_addresses

    # List Ids to send the final email to
    attr_accessor :to_lists

    # If sent in a jericho context, this will have the jericho id
    attr_accessor :jericho_id

    # The prompt's subject line
    attr_accessor :prompt_subject

    # The HTML body of the prompt
    attr_accessor :prompt_html

    # Whether to send the email if no video is recorded. If set to require a video, and none is added before the videoDueDate, the prompt is cancelled.
    attr_accessor :send_without_video

    # When the video must be recorded by
    attr_accessor :video_due_date

    # When the final email is scheduled to be sent
    attr_accessor :scheduled_send_date

    # The video that was added to the prompt. Read Only.
    attr_accessor :video_id

    # The email that was created by the prompt Read Only.
    attr_accessor :email_id

    # The job sent by the prompt Read Only.
    attr_accessor :job_id

    # The status of the prompt: created = 0, sent = 10, recorded = 20, job_created = 30, timed_out = 40, declined = 50 Read Only
    attr_accessor :status

    # Controls whether a user template is applied to the message as it is sent
    attr_accessor :do_not_apply_template


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userId',
        :'template_id' => :'templateId',
        :'email_subject_line' => :'emailSubjectLine',
        :'email_content' => :'emailContent',
        :'to_email_addresses' => :'toEmailAddresses',
        :'to_lists' => :'toLists',
        :'jericho_id' => :'jerichoId',
        :'prompt_subject' => :'promptSubject',
        :'prompt_html' => :'promptHtml',
        :'send_without_video' => :'sendWithoutVideo',
        :'video_due_date' => :'videoDueDate',
        :'scheduled_send_date' => :'scheduledSendDate',
        :'video_id' => :'videoId',
        :'email_id' => :'emailId',
        :'job_id' => :'jobId',
        :'status' => :'status',
        :'do_not_apply_template' => :'doNotApplyTemplate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'template_id' => :'String',
        :'email_subject_line' => :'String',
        :'email_content' => :'String',
        :'to_email_addresses' => :'Array<String>',
        :'to_lists' => :'Array<String>',
        :'jericho_id' => :'String',
        :'prompt_subject' => :'String',
        :'prompt_html' => :'String',
        :'send_without_video' => :'BOOLEAN',
        :'video_due_date' => :'DateTime',
        :'scheduled_send_date' => :'DateTime',
        :'video_id' => :'String',
        :'email_id' => :'String',
        :'job_id' => :'String',
        :'status' => :'Integer',
        :'do_not_apply_template' => :'BOOLEAN'
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

      if attributes.has_key?(:'templateId')
        self.template_id = attributes[:'templateId']
      end

      if attributes.has_key?(:'emailSubjectLine')
        self.email_subject_line = attributes[:'emailSubjectLine']
      end

      if attributes.has_key?(:'emailContent')
        self.email_content = attributes[:'emailContent']
      end

      if attributes.has_key?(:'toEmailAddresses')
        if (value = attributes[:'toEmailAddresses']).is_a?(Array)
          self.to_email_addresses = value
        end
      end

      if attributes.has_key?(:'toLists')
        if (value = attributes[:'toLists']).is_a?(Array)
          self.to_lists = value
        end
      end

      if attributes.has_key?(:'jerichoId')
        self.jericho_id = attributes[:'jerichoId']
      end

      if attributes.has_key?(:'promptSubject')
        self.prompt_subject = attributes[:'promptSubject']
      end

      if attributes.has_key?(:'promptHtml')
        self.prompt_html = attributes[:'promptHtml']
      end

      if attributes.has_key?(:'sendWithoutVideo')
        self.send_without_video = attributes[:'sendWithoutVideo']
      end

      if attributes.has_key?(:'videoDueDate')
        self.video_due_date = attributes[:'videoDueDate']
      end

      if attributes.has_key?(:'scheduledSendDate')
        self.scheduled_send_date = attributes[:'scheduledSendDate']
      end

      if attributes.has_key?(:'videoId')
        self.video_id = attributes[:'videoId']
      end

      if attributes.has_key?(:'emailId')
        self.email_id = attributes[:'emailId']
      end

      if attributes.has_key?(:'jobId')
        self.job_id = attributes[:'jobId']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'doNotApplyTemplate')
        self.do_not_apply_template = attributes[:'doNotApplyTemplate']
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
      return false if @email_subject_line.nil?
      return false if @email_content.nil?
      return false if @prompt_subject.nil?
      return false if @prompt_html.nil?
      return false if @scheduled_send_date.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          template_id == o.template_id &&
          email_subject_line == o.email_subject_line &&
          email_content == o.email_content &&
          to_email_addresses == o.to_email_addresses &&
          to_lists == o.to_lists &&
          jericho_id == o.jericho_id &&
          prompt_subject == o.prompt_subject &&
          prompt_html == o.prompt_html &&
          send_without_video == o.send_without_video &&
          video_due_date == o.video_due_date &&
          scheduled_send_date == o.scheduled_send_date &&
          video_id == o.video_id &&
          email_id == o.email_id &&
          job_id == o.job_id &&
          status == o.status &&
          do_not_apply_template == o.do_not_apply_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user_id, template_id, email_subject_line, email_content, to_email_addresses, to_lists, jericho_id, prompt_subject, prompt_html, send_without_video, video_due_date, scheduled_send_date, video_id, email_id, job_id, status, do_not_apply_template].hash
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
