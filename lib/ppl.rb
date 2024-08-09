require "rubygems"

module Ppl
  module Adapter
  end

  module Application
  end

  module Command
  end

  module Entity
  end

  module Error
  end

  module Format
  end

  module Service
  end

end


require "ppl/adapter/color"
require "ppl/adapter/color/colored"
require "ppl/adapter/email_scraper"
require "ppl/adapter/email_scraper/mail"
require "ppl/adapter/storage"
require "ppl/adapter/storage/disk"
require "ppl/adapter/storage/factory"
require "ppl/adapter/storage/git"
require "ppl/adapter/vcard"
require "ppl/adapter/vcard/vpim"

require "ppl/application/bootstrap"
require "ppl/application/command"
require "ppl/application/command_suite"
require "ppl/application/configuration"
require "ppl/application/input"
require "ppl/application/output"
require "ppl/application/router"
require "ppl/application/shell"

require "ppl/command/age"
require "ppl/command/attribute"
require "ppl/command/init"
require "ppl/command/bday"
require "ppl/command/ls"
require "ppl/command/add"
require "ppl/command/rm"
require "ppl/command/help"
require "ppl/command/show"
require "ppl/command/mv"
require "ppl/command/name"
require "ppl/command/nick"
require "ppl/command/email"
require "ppl/command/org"
require "ppl/command/phone"
require "ppl/command/mutt"
require "ppl/command/post"
require "ppl/command/shell"
require "ppl/command/url"
require "ppl/command/version"
require "ppl/command/external"
require "ppl/command/completion"
require "ppl/command/scrape"

require "ppl/entity/address_book"
require "ppl/entity/contact"
require "ppl/entity/email_address"
require "ppl/entity/name"
require "ppl/entity/phone_number"
require "ppl/entity/postal_address"

require "ppl/error/completion_not_found"
require "ppl/error/contact_not_found"
require "ppl/error/incorrect_usage"
require "ppl/error/invalid_vcard"
require "ppl/error/postal_address_not_found"

require "ppl/format/address_book"
require "ppl/format/address_book/ages"
require "ppl/format/address_book/birthdays"
require "ppl/format/address_book/email_addresses"
require "ppl/format/address_book/mutt_query"
require "ppl/format/address_book/names"
require "ppl/format/address_book/one_line"
require "ppl/format/address_book/nicknames"
require "ppl/format/address_book/organizations"
require "ppl/format/address_book/phone_numbers"
require "ppl/format/address_book/postal_addresses"
require "ppl/format/address_book/urls"
require "ppl/format/contact"
require "ppl/format/contact/age"
require "ppl/format/contact/birthday"
require "ppl/format/contact/email_addresses"
require "ppl/format/contact/full"
require "ppl/format/contact/nicknames"
require "ppl/format/contact/organization"
require "ppl/format/contact/phone_number"
require "ppl/format/contact/postal_address"
require "ppl/format/contact/postal_addresses"
require "ppl/format/contact/urls"
require "ppl/format/custom"
require "ppl/format/custom/contact"
require "ppl/format/custom/email_address"
require "ppl/format/custom/phone_number"
require "ppl/format/name"
require "ppl/format/name/full_only"
require "ppl/format/postal_address"
require "ppl/format/postal_address/multi_line"
require "ppl/format/postal_address/one_line"
require "ppl/format/table"

require "ppl/service/email_address"
require "ppl/service/name"
require "ppl/service/phone_number"
require "ppl/service/postal_address"
require "ppl/version"

class String
  alias_method :each, :each_line
end

