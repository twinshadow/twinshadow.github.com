module Jekyll

  class WikiSubCategories < Liquid::Tag
    def initialize(tag_name, file, tokens)
      super
      @file = file.strip
    end

    def render(context)
      wikibase = context.registers[:site].wikibase
      #wikipath = File.join(context.registers[:site].source, wikibase)
      wikipath = File.dirname(@file)
      wikiuri = ''
      Dir.chdir(includes_dir) do
        subdirs = Dir['**/*'].reject { |x| File.directory?(x) }
      end
    end
  end

  class WikiLink < Liquid::Tag
    def initialize(tag_name, file, tokens)
      super
      @file = file.strip
    end

    def render(context)
      wikibase = context.registers[:site].wikibase
      wikiuri = ''
      Dir.chdir(includes_dir) do
        subdirs = Dir['**/*'].reject { |x| File.directory?(x) }
      end
    end
  end
end

Liquid::Template.register_tag('wiki_subcat', Jekyll::WikiSubCategories)
Liquid::Template.register_tag('wiki_link', Jekyll::WikiSubCategories)
