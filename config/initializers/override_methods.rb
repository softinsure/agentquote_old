#place all path here
require 'override_methods/active_support'
require 'override_methods/active_record'
require 'override_methods/deep_cloning'

#include here
include ActiveRecord
include ActiveSupport

ActiveRecord::Base.send(:include, DeepCloning)