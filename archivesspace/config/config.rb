# Configuration defaults are shown below

################################################################################
### This file shows the ArchivesSpace configuration options that are available,
### and the default value for each.
###
### Note that there is no need to uncomment these unless you plan to change the
### value from its default.
################################################################################
#
###
### This section contains the most commonly changed ArchivesSpace settings
###
#
## Set your database name and credentials here.  Example:
## AppConfig[:db_url] = "jdbc:mysql://localhost:3306/archivesspace?user=as&password=as123&useUnicode=true&characterEncoding=UTF-8"
##
AppConfig[:db_url] = 'jdbc:mysql://db:3306/archivesspace?useUnicode=true&characterEncoding=UTF-8&user=as&password=as123&useSSL=false&allowPublicKeyRetrieval=true'
#
## Set the maximum number of database connections used by the application.
## Default is derived from the number of indexer threads.
#AppConfig[:db_max_connections] = proc { 20 + (AppConfig[:indexer_thread_count] * 2) }
#AppConfig[:db_pool_timeout] = 5 # number of seconds to wait before raising a PoolTimeout error
#
## The ArchivesSpace backend listens on port 8089 by default.  You can set it to
## something else below.
#AppConfig[:backend_url] = "http://localhost:8089"
#
## The ArchivesSpace staff interface listens on port 8080 by default.  You can
## set it to something else below.
#AppConfig[:frontend_url] = "http://localhost:8080"
#
## The ArchivesSpace public interface listens on port 8081 by default.  You can
## set it to something else below.
#AppConfig[:public_url] = "http://localhost:8081"
#
## The ArchivesSpace OAI server listens on port 8082 by default.  You can
## set it to something else below.
#AppConfig[:oai_url] = "http://localhost:8082"
#
## The ArchivesSpace Solr index url default.  You can set it to something else below.
AppConfig[:solr_url] = 'http://solr:8983/solr/archivesspace'
#
## The ArchivesSpace indexer listens on port 8091 by default.  You can
## set it to something else below.
#AppConfig[:indexer_url] = "http://localhost:8091"
#
## The ArchivesSpace API documentation listens on port 8888 by default.  You can
## set it to something else below.
#AppConfig[:docs_url] = "http://localhost:8888"
#
## Logging. By default, this will be output on the screen while the archivesspace
## command is running. When running as a daemon/service, this is put into a
## file in logs/archivesspace.out. You can change this file by changing the log
## value to a filepath that archivesspace has write access to.
#AppConfig[:frontend_log] = "default"
## Log level for the frontend, values: (everything) debug, info, warn, error, fatal (severe only)
#AppConfig[:frontend_log_level] = "debug"
## Log level for the backend, values: (everything) debug, info, warn, error, fatal (severe only)
#AppConfig[:backend_log] = "default"
#AppConfig[:backend_log_level] = "debug"
#
#AppConfig[:pui_log] = "default"
#AppConfig[:pui_log_level] = "debug"
#
#AppConfig[:indexer_log] = "default"
#AppConfig[:indexer_log_level] = "debug"
#
#
## Set to true to log all SQL statements.  Note that this will have a performance
## impact!
#AppConfig[:db_debug_log] = false
## Set to true if you have enabled MySQL binary logging
#AppConfig[:mysql_binlog] = false
#
## Add default solr params, i.e. use AND for search: AppConfig[:solr_params] = { 'mm' => '100%' }
## Another example below sets the boost query value (bq) to boost the relevancy for the query string in the title,
## sets the phrase fields parameter (pf) to boost the relevancy for the title when the query terms are in close proximity to
## each other, and sets the phrase slop (ps) parameter for the pf parameter to indicate how close the proximity should be
##  AppConfig[:solr_params] = {
##      "bq" => proc { "title:\"#{@query_string}\"*" },
##      "pf" => 'title^10',
##      "ps" => 0,
##    }
## For more information about solr parameters, please consult the solr documentation
## here: https://solr.apache.org/guide/solr/latest/query-guide/dismax-query-parser.html
## Configuring search operator to be AND by default - ANW-427
#AppConfig[:solr_params] = { 'q.op' => 'AND' }
#AppConfig[:solr_verify_checksums] = true
#
## Set the application's language (see the .yml files in
## https://github.com/archivesspace/archivesspace/tree/master/common/locales for
## a list of available locale codes)
#AppConfig[:locale] = :en
#
## Plug-ins to load. They will load in the order specified
#AppConfig[:plugins] = ['local', 'lcnaf']
#
## The number of concurrent threads available to run background jobs
## Resist the urge to set this to a big number as it will affect performance
#AppConfig[:job_thread_count] = 2
#
AppConfig[:oai_proxy_url] = 'http://localhost/oai'
#
#AppConfig[:oai_ead_options] = {}
## Example: AppConfig[:oai_ead_options] = { :include_daos => true, :use_numbered_c_tags => true, :include_uris => false }
#
## Use Rails.force_ssl when running in production
AppConfig[:force_ssl] = false
#
###
### Other less commonly changed settings are below
###
#
#AppConfig[:default_admin_password] = "admin"
#
## NOTE: If you run ArchivesSpace using the standard scripts (archivesspace.sh,
## archivesspace.bat or as a Windows service), the value of :data_directory is
## automatically set to be the "data" directory of your ArchivesSpace
## distribution.  You don't need to change this value unless you specifically
## want ArchivesSpace to put its data files elsewhere.
##
#AppConfig[:data_directory] = File.join(Dir.home, "ArchivesSpace")
#
#AppConfig[:backup_directory] = proc { File.join(AppConfig[:data_directory], "demo_db_backups") }
#
#AppConfig[:solr_indexing_frequency_seconds] = 30
#AppConfig[:solr_facet_limit] = 100
#
#AppConfig[:default_page_size] = 10
#AppConfig[:max_boolean_queries] = 1024 # ArchivesSpace Solr default
#AppConfig[:max_page_size] = 250
#
## An option to change the length of the abstracts on the collections overview page
## If your Scope & Contents notes are very long you can increase this to show more
#AppConfig[:abstract_note_length] = 500
#
## A prefix added to cookies used by the application.
##
## Change this if you're running more than one instance of ArchivesSpace on the
## same hostname (i.e. multiple instances on different ports)
#AppConfig[:cookie_prefix] = "archivesspace"
#
## The periodic indexer can run using multiple threads to take advantage of
## multiple CPU cores.
##
## By setting the next two options, you can control how many CPU cores are used,
## and the amount of memory that will be consumed by the indexing process (more
## cores and/or more records per thread means more memory used).
#AppConfig[:indexer_records_per_thread] = 25
#AppConfig[:indexer_thread_count] = 4
#AppConfig[:indexer_solr_timeout_seconds] = 300
#
## PUI Indexer Settings
#AppConfig[:pui_indexer_enabled] = true
#AppConfig[:pui_indexing_frequency_seconds] = 30
#AppConfig[:pui_indexer_records_per_thread] = 25
#AppConfig[:pui_indexer_thread_count] = 1
#
#AppConfig[:index_state_class] = 'IndexState' # set to 'IndexStateS3' for amazon s3
## # store indexer state in amazon s3 (optional)
## # NOTE: s3 charges for read / update requests and the pui indexer is continually
## # writing to state files so you may want to increase pui_indexing_frequency_seconds
## AppConfig[:index_state_s3] = {
##   region: ENV.fetch("AWS_REGION"),
##   aws_access_key_id: ENV.fetch("AWS_ACCESS_KEY_ID"),
##   aws_secret_access_key: ENV.fetch("AWS_SECRET_ACCESS_KEY"),
##   bucket: ENV.fetch("AWS_ASPACE_BUCKET"),
##   prefix: proc { "#{AppConfig[:cookie_prefix]}_" },
## }
#
#AppConfig[:allow_other_unmapped] = false
#
#AppConfig[:db_url_redacted] = proc { AppConfig[:db_url].gsub(/(user|password)=(.*?)(&|$)/, '\1=[REDACTED]\3') }
#
#
#AppConfig[:demo_db_backup_schedule] = "0 4 * * *"
#
#AppConfig[:allow_unsupported_database] = false
#AppConfig[:allow_non_utf8_mysql_database] = false
#
#AppConfig[:demo_db_backup_number_to_keep] = 7
#
## Proxy URLs
## If you are serving user-facing applications via proxy
## (i.e., another domain or port, or via https, or for a prefix) it is
## recommended that you record those URLs in your configuration
AppConfig[:frontend_proxy_url] = 'http://localhost/staff/'
AppConfig[:public_proxy_url] = 'http://localhost/'
#
## Don't override _prefix or _proxy_prefix unless you know what you're doing
#AppConfig[:frontend_proxy_prefix] = proc { "#{URI(AppConfig[:frontend_proxy_url]).path}/".gsub(%r{/+$}, "/") }
#AppConfig[:public_proxy_prefix] = proc { "#{URI(AppConfig[:public_proxy_url]).path}/".gsub(%r{/+$}, "/") }
#
## Setting any of the four keys below to false will prevent the associated
## applications from starting. Temporarily disabling the frontend and public
## UIs and/or the indexer may help users who are running into memory-related
## issues during migration.
#
#AppConfig[:enable_backend] = true
#AppConfig[:enable_frontend] = true
#AppConfig[:enable_public] = true
#AppConfig[:enable_indexer] = true
#AppConfig[:enable_docs] = true
#AppConfig[:enable_oai] = true
#
## Some use cases want the ability to shutdown the Jetty service using Jetty's
## ShutdownHandler, which allows a POST request to a specific URI to signal
## server shutdown. The prefix for this URI path is set to /xkcd to reduce the
## possibility of a collision in the path configuration. So, full path would be
## /xkcd/shutdown?token={randomly generated password}
## The launcher creates a password to use this, which is stored
## in the data directory. This is not turned on by default.
##
#AppConfig[:use_jetty_shutdown_handler] = false
#AppConfig[:jetty_shutdown_path] = "/xkcd"
#
#
## If you have multiple instances of the backend running behind a load
## balancer, list the URL of each backend instance here.  This is used by the
## real-time indexing, which needs to connect directly to each running
## instance.
##
## By default we assume you're not using a load balancer, so we just connect
## to the regular backend URL.
##
#AppConfig[:backend_instance_urls] = proc { [AppConfig[:backend_url]] }
#
#AppConfig[:frontend_theme] = "default"
#AppConfig[:public_theme] = "default"
#
## Sessions marked as expirable will timeout after this number of seconds of inactivity
#AppConfig[:session_expire_after_seconds] = 3600
#
## Sessions marked as non-expirable will eventually expire too, but after a longer period.
#AppConfig[:session_nonexpirable_force_expire_after_seconds] = 604800
#
#AppConfig[:search_username] = "search_indexer"
#
#AppConfig[:public_username] = "public_anonymous"
#
#AppConfig[:staff_username] = "staff_system"
#
#AppConfig[:authentication_sources] = []
## When 'true' restrict authentication attempts to only the source already set for the user
#AppConfig[:authentication_restricted_by_source] = false # default: allow any source
#
#AppConfig[:realtime_index_backlog_ms] = 60000
#
#AppConfig[:notifications_backlog_ms] = 60000
#AppConfig[:notifications_poll_frequency_ms] = 1000
#
#AppConfig[:max_usernames_per_source] = 50
#
#AppConfig[:demodb_snapshot_flag] = proc { File.join(AppConfig[:data_directory], "create_demodb_snapshot.txt") }
#
## Report Configuration
## :report_page_layout uses valid values for the  CSS3 @page directive's
## size property: http://www.w3.org/TR/css3-page/#page-size-prop
#AppConfig[:report_page_layout] = "letter"
#AppConfig[:report_pdf_font_paths] = proc { ["#{AppConfig[:backend_url]}/reports/static/fonts/dejavu/DejaVuSans.ttf"] }
#AppConfig[:report_pdf_font_family] = "\"DejaVu Sans\", sans-serif"
#
## option to enable custom reports
## USE WITH CAUTION - running custom reports that are too complex may cause ASpace to crash
#AppConfig[:enable_custom_reports] = false
#
## Path to system Java -- required when creating PDFs on Windows
#AppConfig[:path_to_java] = "java"
#
## By default, the plugins directory will be in your ASpace Home.
## If you want to override that, update this with an absolute
## path
#AppConfig[:plugins_directory] = "plugins"
#
## URL to direct the feedback link
## You can remove this from the footer by making the value blank.
#AppConfig[:feedback_url] = "https://archivesspace.org/contact"
#
## Allow an unauthenticated user to create an account
#AppConfig[:allow_user_registration] = true
#
## Help Configuration
#AppConfig[:help_enabled] = true
#AppConfig[:help_url] = "https://archivesspace.atlassian.net/wiki/spaces/ArchivesSpaceUserManual/overview"
#AppConfig[:help_topic_base_url] = "https://archivesspace.atlassian.net/wiki/spaces/ArchivesSpaceUserManual/pages/"
#
#AppConfig[:shared_storage] = proc { File.join(AppConfig[:data_directory], "shared") }
#
## formerly known as :import_job_path
#AppConfig[:job_file_path] = proc { AppConfig.has_key?(:import_job_path) ? AppConfig[:import_job_path] : File.join(AppConfig[:shared_storage], "job_files") }
#
## this too
#AppConfig[:job_poll_seconds] = proc { AppConfig.has_key?(:import_poll_seconds) ? AppConfig[:import_poll_seconds] : 5 }
#
## and this
#AppConfig[:job_timeout_seconds] = proc { AppConfig.has_key?(:import_timeout_seconds) ? AppConfig[:import_timeout_seconds] : 300 }
#
#
## By default, only allow jobs to be cancelled if we're running against MySQL (since we can rollback)
#AppConfig[:jobs_cancelable] = proc { (AppConfig[:db_url] != AppConfig.demo_db_url).to_s }
#
#AppConfig[:max_location_range] = 1000
#
## Schema Info check
## ASpace backend will not start if the db's schema_info version is not set
## correctly for this version of ASPACE. This is to ensure that all the
## migrations have run and completed before starting the app. You can override
## this check here. Do so at your own peril.
#AppConfig[:ignore_schema_info_check] = false
#
## To use this, set an OS environment variable of ASPACE_DEMO = true
## This is the configuration variable to point to some demo data for use in testing,
## teaching, etc.
#AppConfig[:demo_data_url] = ""
#
## Expose external ids in the frontend
#AppConfig[:show_external_ids] = false
#
## Whether to display archival record identifiers in the frontend largetree container
#AppConfig[:display_identifiers_in_largetree_container] = false
#
## Allow mixed content in the title fields of resources, archival objects,
## digital objects, digital object components, and accessions
#AppConfig[:allow_mixed_content_title_fields] = false
#
## This sets the allowed size of the request/response header that Jetty will accept (
## anything bigger gets a 403 error ). Note if you want to jack this size up,
## you will also have to configure your Nginx/Apache  as well if
## you're using that
#AppConfig[:jetty_response_buffer_size_bytes] = 64 * 1024
#AppConfig[:jetty_request_buffer_size_bytes] = 64 * 1024
#
## Container Management Configuration Settings
##
## :container_management_barcode_length defines global and repo-level barcode validations
## (validating on length only).  Barcodes that have either no value, or a value between :min
## and :max, will validate on save.  Set global constraints via :system_default, and use
## the repo_code value for repository-level constraints.  Note that :system_default will
## always inherit down its values when possible.
##
## Example:
## AppConfig[:container_management_barcode_length] = {:system_default => {:min => 5, :max => 10}, 'repo' => {:min => 9, :max => 12}, 'other_repo' => {:min => 9, :max => 9} }
#
## :container_management_extent_calculator globally defines the behavior of the extent calculator.
## Use :report_volume (true/false) to define whether space should be reported in cubic
## or linear dimensions.
## Use :unit (:feet, :inches, :meters, :centimeters) to define the unit which the calculator
## reports extents in.
## Use :decimal_places to define how many decimal places the calculator should return.
##
## Example:
## AppConfig[:container_management_extent_calculator] = { :report_volume => true, :unit => :feet, :decimal_places => 3 }
#
## Public User Interface (PUI) Settings
##
## PUI Inheritance
## Define the fields for a record type that are inherited from ancestors
## if they don't have a value in the record itself.
## This is used in common/record_inheritance.rb and was developed to support
## the public UI application.
## Note - any changes to record_inheritance config will require a reindex of pui
## records to take affect. To do this remove files from indexer_pui_state
#AppConfig[:record_inheritance] = {
#  :archival_object => {
#    :inherited_fields => [
#                          {
#                            :property => 'title',
#                            :inherit_directly => true
#                          },
#                          {
#                            :property => 'component_id',
#                            :inherit_directly => false
#                          },
#                          {
#                            :property => 'lang_materials',
#                            :inherit_directly => false
#                          },
#                          {
#                            :property => 'dates',
#                            :inherit_directly => true
#                          },
#                          {
#                            :property => 'extents',
#                            :inherit_directly => false
#                          },
#                          {
#                            :property => 'linked_agents',
#                            :inherit_if => proc {|json| json.select {|j| j['role'] == 'creator'} },
#                            :inherit_directly => false
#                          },
#                          {
#                            :property => 'notes',
#                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'accessrestrict'} },
#                            :inherit_directly => true
#                          },
#                          {
#                            :property => 'notes',
#                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'scopecontent'} },
#                            :inherit_directly => false
#                          },
#                          {
#                            :property => 'notes',
#                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'langmaterial'} },
#                            :inherit_directly => false
#                          },
#                         ]
#  }
#}
#
## record types resolved for record inheritance
#AppConfig[:record_inheritance_resolves] = [
#  'ancestors',
#  'ancestors::linked_agents',
#  'ancestors::subjects',
#  # 'ancestors::instances::sub_container::top_container',
#]
#
## To enable composite identifiers - added to the merged record in a property _composite_identifier
## The values for :include_level and :identifier_delimiter shown here are the defaults
## If :include_level is set to true then level values (eg Series) will be included in _composite_identifier
## The :identifier_delimiter is used when joining the four part identifier for resources
##AppConfig[:record_inheritance][:archival_object][:composite_identifiers] = {
##  :include_level => false,
##  :identifier_delimiter => ' '
##}
#
## To configure additional elements to be inherited use this pattern in your config
##AppConfig[:record_inheritance][:archival_object][:inherited_fields] <<
##  {
##    :property => 'linked_agents',
##    :inherit_if => proc {|json| json.select {|j| j['role'] == 'subject'} },
##    :inherit_directly => true
##  }
## ... or use this pattern to add many new elements at once
##AppConfig[:record_inheritance][:archival_object][:inherited_fields].concat(
##  [
##    {
##      :property => 'subjects',
##      :inherit_if => proc {|json|
##        json.select {|j|
##          ! j['_resolved']['terms'].select { |t| t['term_type'] == 'topical'}.empty?
##        }
##      },
##      :inherit_directly => true
##    },
##    {
##      :property => 'external_documents',
##      :inherit_directly => false
##    },
##    {
##      :property => 'rights_statements',
##      :inherit_directly => false
##    },
##    {
##      :property => 'instances',
##      :inherit_directly => false
##    },
##  ])
#
## If you want to modify any of the default rules, the safest approach is to uncomment
## the entire default record_inheritance config and make your changes.
## For example, to stop scopecontent notes from being inherited into file or item records
## uncomment the entire record_inheritance default config above, and add a skip_if
## clause to the scopecontent rule, like this:
##  {
##    :property => 'notes',
##    :skip_if => proc {|json| ['file', 'item'].include?(json['level']) },
##    :inherit_if => proc {|json| json.select {|j| j['type'] == 'scopecontent'} },
##    :inherit_directly => false
##  },
#
## PUI General Configurations
## TODO: Clean up configuration options
#
#AppConfig[:pui_search_results_page_size] = 10
#AppConfig[:pui_branding_img] = 'ArchivesSpaceLogo.svg'
#AppConfig[:pui_branding_img_alt_text] = 'ArchivesSpace - a community served by Lyrasis.'
#AppConfig[:pui_show_favicon] = true # whether or not to show a favicon
#
#AppConfig[:frontend_branding_img] = 'archivesspace/ArchivesSpaceLogo.svg'
#AppConfig[:frontend_branding_img_alt_text] = 'ArchivesSpace - a community served by Lyrasis.'
#AppConfig[:frontend_show_favicon] = true # whether or not to show a favicon
#
#AppConfig[:pui_block_referrer] = true # patron privacy; blocks full 'referrer' when going outside the domain
#
## The number of PDFs that can be generated (in the background) at the same time.
##
## PDF generation can be a little memory intensive for large collections, so this is
## set fairly low out of the box.
#AppConfig[:pui_max_concurrent_pdfs] = 2
## You can set this to nil or zero to prevent a timeout
#AppConfig[:pui_pdf_timeout] = 600
#
## The following determine which 'tabs' are on the main horizontal menu
#AppConfig[:pui_hide] = {}
#AppConfig[:pui_hide][:repositories] = false
#AppConfig[:pui_hide][:resources] = false
#AppConfig[:pui_hide][:digital_objects] = false
#AppConfig[:pui_hide][:accessions] = false
#AppConfig[:pui_hide][:subjects] = false
#AppConfig[:pui_hide][:agents] = false
#AppConfig[:pui_hide][:classifications] = false
#AppConfig[:pui_hide][:search_tab] = false
## The following determine globally whether the various "badges" appear on the Repository page
## can be overridden at repository level below (e.g.:  AppConfig[:pui_repos][{repo_code}][:hide][:counts] = true
#AppConfig[:pui_hide][:resource_badge] = false
#AppConfig[:pui_hide][:record_badge] = true # hide by default
#AppConfig[:pui_hide][:digital_object_badge] = false
#AppConfig[:pui_hide][:accession_badge] = false
#AppConfig[:pui_hide][:subject_badge] = false
#AppConfig[:pui_hide][:agent_badge] = false
#AppConfig[:pui_hide][:classification_badge] = false
#AppConfig[:pui_hide][:counts] = false
## The following determines globally whether the 'container inventory' navigation tab/pill is hidden on resource/collection page
#AppConfig[:pui_hide][:container_inventory] = false
#
## Whether to display linked deaccessions
#AppConfig[:pui_display_deaccessions] = true
#
## Where to position the PUI Collection Organization sidebar
## Options: 'left' or 'right'
#AppConfig[:pui_collection_org_sidebar_position] = 'left'
#
## Whether to display archival record identifiers in the PUI collection organization tree
#AppConfig[:pui_display_identifiers_in_resource_tree] = false
#
## The number of characters to truncate before showing the 'Read More' link on notes
#AppConfig[:pui_readmore_max_characters] = 1000
#
## Whether to expand all additional information blocks at the bottom of record pages by default. `true` expands all blocks, `false` collapses all blocks.
#AppConfig[:pui_expand_all] = true
#
## Enable / disable PUI resource/archival object page actions
#AppConfig[:pui_page_actions_cite] = true
#AppConfig[:pui_page_actions_request] = true
#AppConfig[:pui_page_actions_print] = true
#
## Enable / disable search-in-collection form in sidebar when viewing records
#AppConfig[:pui_search_collection_from_archival_objects] = false
#AppConfig[:pui_search_collection_from_collection_organization] = false
#
## when a user is authenticated, add a link back to the staff interface from the specified record
#AppConfig[:pui_enable_staff_link] = true
## by default, staff link will open record in staff interface in edit mode,
## change this to 'readonly' for it to open in readonly mode
#AppConfig[:pui_staff_link_mode] = 'edit'
#
## PUI Request Function (used when AppConfig[:pui_page_actions_request] = true)
## the following determine on what kinds of records the request button is displayed
#AppConfig[:pui_requests_permitted_for_types] = [:resource, :archival_object, :accession, :digital_object, :digital_object_component]
#AppConfig[:pui_requests_permitted_for_containers_only] = false # set to 'true' if you want to disable if there is no top container
#
## Repository-specific examples.  Replace {repo_code} with your repository code, i.e. 'foo' - note the lower-case
#AppConfig[:pui_repos] = {}
## Example:
## AppConfig[:pui_repos]['foo'] = {}
## AppConfig[:pui_repos]['foo'][:requests_permitted_for_types] = [:resource, :archival_object, :accession, :digital_object, :digital_object_component] # for a particular repository, only enable requests for certain record types (Note this configuration will override AppConfig[:pui_requests_permitted_for_types] for the repository)
## AppConfig[:pui_repos]['foo'][:requests_permitted_for_containers_only] = true # for a particular repository ,disable request
## AppConfig[:pui_repos]['foo'][:request_email] = {email address} # the email address to send any repository requests
## AppConfig[:pui_repos]['foo'][:hide] = {}
## AppConfig[:pui_repos]['foo'][:hide][:counts] = true
#
## PUI email settings (logs emails when disabled)
#AppConfig[:pui_email_enabled] = false
#
## See above AppConfig[:pui_repos][{repo_code}][:request_email] for setting repository email overrides
## 'pui_email_override' for testing, this email will be the to-address for all sent emails
## AppConfig[:pui_email_override] = 'testing@example.com'
## 'pui_request_email_fallback_to_address' the 'to' email address for repositories that don't define their own email
##AppConfig[:pui_request_email_fallback_to_address] = 'testing@example.com'
## 'pui_request_email_fallback_from_address' the 'from' email address for repositories that don't define their own email
##AppConfig[:pui_request_email_fallback_from_address] = 'testing@example.com'
#
## use the repository record email address for requests (overrides config email)
#AppConfig[:pui_request_use_repo_email] = false
#AppConfig[:global_email_from_address] = "noreply@yourdomain.com"
## Example sendmail configuration:
## AppConfig[:email_delivery_method] = :sendmail
## AppConfig[:email_sendmail_settings] = {
##   location: '/usr/sbin/sendmail',
##   arguments: '-i'
## }
##AppConfig[:email_perform_deliveries] = true
##AppConfig[:email_raise_delivery_errors] = true
## Example SMTP configuration:
##AppConfig[:email_delivery_method] = :smtp
##AppConfig[:email_smtp_settings] = {
##      address:              'smtp.gmail.com',
##      port:                 587,
##      domain:               'gmail.com',
##      user_name:            '<username>',
##      password:             '<password>',
##      authentication:       'plain',
##      enable_starttls_auto: true,
##}
##AppConfig[:email_perform_deliveries] = true
##AppConfig[:email_raise_delivery_errors] = true
#
#
## Add page actions via the configuration
#AppConfig[:pui_page_custom_actions] = []
## Examples:
## Javascript action example:
## AppConfig[:pui_page_custom_actions] << {
##   'record_type' => ['resource', 'archival_object'], # the jsonmodel type to show for
##   'label' => 'actions.do_something', # the I18n path for the action button
##   'icon' => 'fa-paw', # the font-awesome icon CSS class
##   'onclick_javascript' => 'alert("do something grand");',
## }
## # Hyperlink action example:
## AppConfig[:pui_page_custom_actions] << {
##   'record_type' => ['resource', 'archival_object'], # the jsonmodel type to show for
##   'label' => 'actions.do_something', # the I18n path for the action button
##   'icon' => 'fa-paw', # the font-awesome icon CSS class
##   'url_proc' => proc {|record| 'http://example.com/aspace?uri='+record.uri},
## }
## # Form-POST action example:
## AppConfig[:pui_page_custom_actions] << {
##   'record_type' => ['resource', 'archival_object'], # the jsonmodel type to show for
##   'label' => 'actions.do_something', # the I18n path for the action button
##   'icon' => 'fa-paw', # the font-awesome icon CSS class
##   # 'post_params_proc' returns a hash of params which populates a form with hidden inputs ('name' => 'value')
##   'post_params_proc' => proc {|record| {'uri' => record.uri, 'display_string' => record.display_string} },
##   # 'url_proc' returns the URL for the form to POST to
##   'url_proc' => proc {|record| 'http://example.com/aspace?uri='+record.uri},
##   # 'form_id' as string to be used as the form's ID
##   'form_id' => 'my_grand_action',
## }
## # ERB action example:
## AppConfig[:pui_page_custom_actions] << {
##   'record_type' => ['resource', 'archival_object'], # the jsonmodel type to show for
##   # 'erb_partial' returns the path to an erb template from which the action will be rendered
##   'erb_partial' => 'shared/my_special_action',
## }
#
#AppConfig[:pui_display_facets_alpha] = false
#
## Human-Readable URLs options
## use_human_readable_urls: determines whether fields and options related to human-readable URLs appear in the staff interface
#
## Changing this option will not remove or clear any slugs that exist currently.
## This setting only affects links that are displayed. URLs that point to valid slugs will still work.
## WARNING: Changing this setting may require an index rebuild for changes to take effect.
#
#AppConfig[:use_human_readable_urls] = false
#
## Use the repository in human-readable URLs
## Warning: setting repo_name_in_slugs to true when it has previously been set to false will break links, unless all slugs are regenerated.
#AppConfig[:repo_name_in_slugs] = false
#
## Autogenerate slugs based on IDs. If this is set to false, then slugs will autogenerate based on name or title.
#AppConfig[:auto_generate_slugs_with_id] = false
#
## For Resources: if this option and auto_generate_slugs_with_id are both enabled, then slugs for Resources will be generated with EADID instead of the identifier.
#AppConfig[:generate_resource_slugs_with_eadid] = false
#
## For archival objects: if this option and auto_generate_slugs_with_id are both enabled, then slugs for archival resources will be generated with Component Unique Identifier instead of the identifier.
#AppConfig[:generate_archival_object_slugs_with_cuid] = false
#
## For Accessions browse set if accession date year filter values should be sorted ascending rather than descending (default)
#AppConfig[:sort_accession_date_filter_asc] = false
## Determines if the subject source is shown along with the subject heading in records' subject listings
## This can help differentiate between subjects with the same heading
#AppConfig[:show_source_in_subject_listing] = false
#
## ARKs configuration options
## determines whether fields and options related to ARKs appear in the staff interface
#AppConfig[:arks_enabled] = false
#
## If you are planning on using ARKs, change this to a valid, registered NAAN.
## Institutional NAAN value to use in ARK URLs.
#AppConfig[:ark_naan] = "99999"
#
## URL prefix to use in ARK URLs.
## In most cases this will be the same as the PUI URL.
#AppConfig[:ark_url_prefix] = proc { AppConfig[:public_proxy_url] }
#
## The implementation of ArkMinter used to generate new ARKs.  See
## `ark_minter.rb` for documentation on how to implement your own ARK minter.
##
## Out of the box, you can choose between:
##
##  :archivesspace_ark_minter -- ArchivesSpace ARK minter based on a numeric sequence.
##
##  :smithsonian_ark_minter -- An ARK minter, used by the Smithsonian
##    Institution, based on random UUIDs.
#AppConfig[:ark_minter] = :archivesspace_ark_minter
#
## Enables a field on each Repository record that is inserted after the NAAN in
## each ARK generated.
#AppConfig[:ark_enable_repository_shoulder] = false
#
## If set, this string is included to separate the ARK shoulder from the unique generated value.
#AppConfig[:ark_shoulder_delimiter] = ''
#
## If true, adds a field to each Resource/Archival Object record that allows the
## ARK URL to be manually set.
#AppConfig[:arks_allow_external_arks] = true
#
## Specifies if the fields that show up in csv should be limited to those in search results
#AppConfig[:limit_csv_fields] = true
#
## Use to specify the maximum number of columns to display when searching or browsing
#AppConfig[:max_search_columns] = 7
#
## For Bulk Import:
## specifies whether the "Load Digital Objects" button is available at the Resource Level
#AppConfig[:hide_do_load] = false
#
## For Agents Export
#AppConfig[:export_eac_agency_code] = false
#
## Disable logged warnings when changing config settings that have already been set
## This might be useful when running tests that need to fiddle with config
#AppConfig[:disable_config_changed_warning] = false
#
## Resolving linked events can have a big impact on performance. If the number of linked
## events surpasses the max then the events will not be resolved and a more abridged
## record will be displayed to keep memory usage under control as the no. of events grows
#AppConfig[:max_linked_events_to_resolve] = 100
#
## Prior to 3.2.0, multiple ARKs may have been created without
## the user intending to do so. Setting this to true will make
## database upgrade 158 attempt to clean up unwanted extra ARKs.
## When multiple rows in the ARK table reference the same resource
## or archival object, the first one created will be kept
## and the rest discarded.
## Use with caution and test thoroughly.
#AppConfig[:prune_ark_name_table] = false
#
## If the PUI is enabled, add resource finding aid URLs to MARC exports
#AppConfig[:include_pui_finding_aid_urls_in_marc_exports] = false
#
## If enabled, use slugs instead of URIs in finding aid links (856 $u)
#AppConfig[:use_slug_finding_aid_urls_in_marc_exports] = false
#
## Enables Language Selection in PUI
#AppConfig[:allow_pui_language_selection] = true
#
## How repositories should be sorted in the PUI. Options are :display_string or :position
#AppConfig[:pui_repositories_sort] = :display_string
#
## Set the font used to generate PDFs in the PUI
#AppConfig[:pui_pdf_font_files] = ["KurintoText-Rg.ttf",
#                                  "KurintoText-Bd.ttf",
#                                  "KurintoText-It.ttf",
#                                  "KurintoTextJP-Rg.ttf",
#                                  "KurintoTextJP-Bd.ttf",
#                                  "KurintoTextJP-It.ttf",
#                                  "KurintoTextKR-Rg.ttf",
#                                  "KurintoTextKR-Bd.ttf",
#                                  "KurintoTextKR-It.ttf",
#                                  "KurintoTextSC-Rg.ttf",
#                                  "KurintoTextSC-Bd.ttf",
#                                  "KurintoTextSC-It.ttf",
#                                  "NotoSerif-Regular.ttf",
#                                  "NotoSerif-Bold.ttf",
#                                  "NotoSerif-Italic.ttf"]
#
#AppConfig[:pui_pdf_font_name] = "Kurinto Text,Kurinto Text JP,Kurinto Text KR,Kurinto Text SC,Noto Serif"
#
#
#AppConfig[:pui_pdf_paragraph_line_height] = "125%"
#AppConfig[:pui_pdf_title_line_height] = "140%"
#
## Password recovery - requires email configuration
## See example email configuration above
#AppConfig[:allow_password_reset] = false
#
## Allow users with the 'administer_system' role to view the system_info route (e.g., FRONTEND_BASE_URL/system_info)
## By default, this route is only accessible to the 'admin' user, and no other admins.
#
#AppConfig[:allow_other_admins_access_to_system_info] = false
#
## If enabled, the importer will drop subrecords (dates, extents, instances or
## notes) when all spreadsheet columns for that existing subrecord have no values.
## As not all subrecord fields have a corresponding column in the spreadsheet, you
## may unwittingly drop a subrecord which has data in other fields.
#
#AppConfig[:bulk_archival_object_updater_apply_deletes] = false
#
## By default, the importer will throw an error when it finds a top container
## in the spreadsheet that is not attached within the current resource's hierarchy.
## When enabled, those missing top containers are created on demand.
## This configuration setting can be overridden by providing a
## `create_missing_top_containers` parameter to the import job.
#
#AppConfig[:bulk_archival_object_updater_create_missing_top_containers] = false
#
## Default search scope setting
## Options: 'all_record_types', 'collections_only'
#AppConfig[:search_default_scope] = 'all_record_types'
