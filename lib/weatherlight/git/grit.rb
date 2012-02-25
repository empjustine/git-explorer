require 'grit'

module Weatherlight

  module Grit
    attr_accessor :repo

    def initialize(path)
      @repo = ::Grit::Repo.new(path)
    end

    def local_branches
      return @repo.branches.map { |local_branch|
        "#{local_branch.name}\tlocal-branch"
      }
    end

    def commits(depth=100)
      @repo.commits(nil, depth).map { |commit|
        "#{commit.short_message}\t#{commit.id}\tcommit"
      }.flatten
    end

    def heads
      return @repo.heads.map { |head|
        "#{head.name}\t#{head.commit.id}\thead"
      }
    end

    def tags
      return @repo.tags.map { |tag|
        "#{tag.name}\t#{tag.commit.id}\ttag" 
      }
    end

    def remote_branches
      return @repo.remotes.map { |remote_branch|
        "#{remote_branch.name}\tremote-branch"
      }
    end

    def all
      remote_branches + local_branches + tags + heads + commits
    end

    def ref(ref)
      return nil ||
        ref.match(/(?<local_branch>.*?)\tlocal-branch$/) ||
        ref.match(/(?<commit>.*?)\t(?<id>.*?)\tcommit/) ||
        ref.match(/(?<head>.*?)\t(?<id>.*?)\thead/) ||
        ref.match(/(?<tag>.*?)\t(?<id>.*?)\ttag/) ||
        ref.match(/(?<remote_branches>.*?)\tremote-branch/) ||
        find_sha1
    end
   
    def find_sha1(ref)
      commit = Grit::Commit.find_all(@repo, ref).first
      return 'commit' => commit.short_message, 'id' => commit.id
    rescue => e
      puts "#{e.class}: #{e.exception}" 
      puts e.backtrace
      return nil
    end
  end # module Git
end # module Weatherlight