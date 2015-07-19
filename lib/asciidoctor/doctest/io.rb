require 'asciidoctor/doctest/io/base_examples'
require 'asciidoctor/doctest/io/asciidoc_examples'
require 'asciidoctor/doctest/io/html_examples'
require 'asciidoctor/doctest/factory'

module Asciidoctor::DocTest
  module IO
    extend Factory

    register :asciidoc, AsciidocExamples, file_ext: '.adoc'
    register :xml, HtmlExamples, file_ext: '.xml'
    register :html, HtmlExamples, file_ext: '.html'
  end
end
