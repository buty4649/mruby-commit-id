# mruby-commit-id
This repository adds two global constants, `MRUBY_COMMIT_ID` and `MRUBY_COMMIT_ID_SHORT`, which indicate the commit ID of the mruby source currently being built.

> [!NOTE]
> This mrbgem will not function properly without a `.git` directory included in the mruby source code.

## Requirements

* git command
* mruby source code containing a `.git` directory

## Usage

```ruby
MRuby::Build.new do |conf|
  conf.gem github:'buty4649/mruby-commit-id'
-- snip --
end
```

## Examples

```sh
$ ./bin/mruby -e 'puts MRUBY_COMMIT_ID'
f2dc44215c8207e8ba7c161fd699c55075a266e1

$ ./bin/mruby -e 'puts MRUBY_COMMIT_ID_SHORT'
f2dc44215
```
