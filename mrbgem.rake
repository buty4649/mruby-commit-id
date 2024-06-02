MRuby::Gem::Specification.new('mruby-commit-id') do |spec|
  spec.license = 'MIT'
  spec.author  = 'buty4649@gmail.com'
  spec.summary = 'Add MRUBY_COMMIT_ID to global constant'

  mruby_root = spec.build.root
  commit_id = `git -C #{mruby_root} rev-parse HEAD`.chomp
  commit_id_short = `git -C #{mruby_root} rev-parse --short HEAD`.chomp
  spec.cc.defines << %Q(MRUBY_COMMIT_ID=#{commit_id})
  spec.cc.defines << %Q(MRUBY_COMMIT_ID_SHORT=#{commit_id_short})
end
