=begin
#CRM Pipelines

#Pipelines represent distinct stages in a workflow, like closing a deal or servicing a support ticket. These endpoints provide access to read and modify pipelines in HubSpot. Pipelines support `deals` and `tickets` object types.  ## Pipeline ID validation  When calling endpoints that take pipelineId as a parameter, that ID must correspond to an existing, un-archived pipeline. Otherwise the request will fail with a `404 Not Found` response.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Client::Crm::Pipelines::Api::PipelinesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PipelinesApi' do
  before do
    # run before each test
    @instance = Hubspot::Client::Crm::Pipelines::Api::PipelinesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PipelinesApi' do
    it 'should create an instance of PipelinesApi' do
      expect(@instance).to be_instance_of(Hubspot::Client::Crm::Pipelines::Api::PipelinesApi)
    end
  end

  # unit tests for archive
  # Archive a pipeline
  # Archive the pipeline identified by &#x60;{pipelineId}&#x60;.
  # @param object_type 
  # @param pipeline_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a pipeline
  # Create a new pipeline with the provided property values. The entire pipeline object, including its unique ID, will be returned in the response.
  # @param object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [PipelineInput] :body 
  # @return [Pipeline]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Return a pipeline by ID
  # Return a single pipeline object identified by its unique &#x60;{pipelineId}&#x60;.
  # @param object_type 
  # @param pipeline_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :archived Whether to return only results that have been archived.
  # @return [Pipeline]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # Retrieve all pipelines
  # Return all pipelines for the object type specified by &#x60;{objectType}&#x60;.
  # @param object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :archived Whether to return only results that have been archived.
  # @return [CollectionResponsePipeline]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace
  # Replace a pipeline
  # Replace all the properties of an existing pipeline with the values provided. This will overwrite any existing pipeline stages. The updated pipeline will be returned in the response.
  # @param object_type 
  # @param pipeline_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PipelineInput] :body 
  # @return [Pipeline]
  describe 'replace test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a pipeline
  # Perform a partial update of the pipeline identified by &#x60;{pipelineId}&#x60;. The updated pipeline will be returned in the response.
  # @param object_type 
  # @param pipeline_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :archived Whether to return only results that have been archived.
  # @option opts [PipelinePatchInput] :body 
  # @return [Pipeline]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end