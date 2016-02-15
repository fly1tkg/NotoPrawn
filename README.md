# NotoPrawn

NotoSans fonts for Prawn.

## Installation

```ruby
gem 'noto_prawn', github: 'fly1tkg/NotoPrawn'
```

## Usage

```ruby
pdf = Prawn::Document.new
# Set **Noto Sans Regular** fonts
pdf.set_noto_sans_regular
pdf.text 'こんにちは'
pdf.render_file 'path/to/output.pdf'
```

### Family

```ruby
# You can use a bold font.
pdf.set_noto_sans_bold
```

### CJK fonts

```ruby
# You can specify CJK Ideographs
# default is :sc
# :jp => Japanese
# :sc => Simplify Chinese
# :tc => Traditional Chinese
# :kr => Korean
pdf.set_noto_sans_regular :jp
```

## Contributing

1. Fork it ( https://github.com/fly1tkg/NotoPrawn/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Known Issue

Do not hesitate to send Pull Requests.

* I want to add more sample texts for specs. (spec/texts/*.txt)
* Limited CJK Ideographs.
  * **JIS X 0208** for Japanese
  * **通用规范汉字表** for Simplified Chinese
  * **CNS 11643 P1** and **常用國字標準字體表** for Traditional Chinese
  * **KS X 1001** for Korean

## Licenses

```
Copyright (c) 2016 fly1tkg
Released under the MIT license
```

```
Noto Sans
Google
SIL Open Font License, Version 1.1
```
