# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rails-controller-testing` gem.
# Please instead update this file by running `bin/tapioca gem rails-controller-testing`.

module Rails
  extend ::ActiveSupport::Autoload
  extend ::ActiveSupport::Benchmarkable

  class << self
    def app_class; end
    def app_class=(_arg0); end
    def application; end
    def application=(_arg0); end
    def autoloaders; end
    def backtrace_cleaner; end
    def cache; end
    def cache=(_arg0); end
    def configuration; end
    def env; end
    def env=(environment); end
    def error; end
    def gem_version; end
    def groups(*groups); end
    def initialize!(*_arg0, **_arg1, &_arg2); end
    def initialized?(*_arg0, **_arg1, &_arg2); end
    def logger; end
    def logger=(_arg0); end
    def public_path; end
    def root; end
    def version; end
  end
end

module Rails::Controller; end

module Rails::Controller::Testing
  class << self
    def install; end
  end
end

module Rails::Controller::Testing::Integration
  def delete(*args, **kwargs); end
  def get(*args, **kwargs); end
  def head(*args, **kwargs); end
  def patch(*args, **kwargs); end
  def post(*args, **kwargs); end
  def put(*args, **kwargs); end
end

class Rails::Controller::Testing::Railtie < ::Rails::Railtie; end

module Rails::Controller::Testing::TemplateAssertions
  extend ::ActiveSupport::Concern

  # Asserts that the request was rendered with the appropriate template file or partials.
  #
  #   # assert that the "new" view template was rendered
  #   assert_template "new"
  #
  #   # assert that the exact template "admin/posts/new" was rendered
  #   assert_template %r{\Aadmin/posts/new\Z}
  #
  #   # assert that the layout 'admin' was rendered
  #   assert_template layout: 'admin'
  #   assert_template layout: 'layouts/admin'
  #   assert_template layout: :admin
  #
  #   # assert that no layout was rendered
  #   assert_template layout: nil
  #   assert_template layout: false
  #
  #   # assert that the "_customer" partial was rendered twice
  #   assert_template partial: '_customer', count: 2
  #
  #   # assert that no partials were rendered
  #   assert_template partial: false
  #
  #   # assert that a file was rendered
  #   assert_template file: "README.rdoc"
  #
  #   # assert that no file was rendered
  #   assert_template file: nil
  #   assert_template file: false
  #
  # In a view test case, you can also assert that specific locals are passed
  # to partials:
  #
  #   # assert that the "_customer" partial was rendered with a specific object
  #   assert_template partial: '_customer', locals: { customer: @customer }
  def assert_template(options = T.unsafe(nil), message = T.unsafe(nil)); end

  def process(*_arg0, **_arg1); end
  def reset_template_assertion; end
  def setup_subscriptions; end
  def teardown_subscriptions; end
end

Rails::Controller::Testing::TemplateAssertions::RENDER_TEMPLATE_INSTANCE_VARIABLES = T.let(T.unsafe(nil), Array)

module Rails::Controller::Testing::TestProcess
  def assigns(key = T.unsafe(nil)); end
end

Rails::Controller::Testing::VERSION = T.let(T.unsafe(nil), String)
