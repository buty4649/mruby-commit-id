MRuby::Gem::Specification.new('mruby-commit-id') do |spec|
  spec.license = 'MIT'
  spec.author  = 'buty4649@gmail.com'
  spec.summary = 'Add MRUBY_COMMIT_ID to global constant'

  mruby_root = spec.build.root
  commit_id = read_commit_id(mruby_root)
  commit_id_short = commit_id[0, 9]
  spec.cc.defines << %Q(MRUBY_COMMIT_ID=#{commit_id})
  spec.cc.defines << %Q(MRUBY_COMMIT_ID_SHORT=#{commit_id_short})
end

def read_commit_id(mruby_root)
  head = File.read(File.join(mruby_root, '.git', 'HEAD')).chomp
  if head =~ /^ref:/
    refs = head.split(' ').last
    File.read(File.join(mruby_root, '.git', refs)).chomp
  else
    head
  end
end
