#
# = The Struture of this skin:
#
#        ----------------------------------|
# header | Left   |  Center      |   Right |
#        |------|--------------------------|
#        |      |  Top Side                |
#        | Left |--------------------------|
#        | Side |                  | Right |
# main   |      |  yield           | Side  |
#        |      |                  |       |
#        |      |--------------------------|
#        |      |  Bottom Side             |
#        |------|--------------------------|
#        |            Row1                 |
# footer |---------------------------------|
#        |            Row2                 |
#        ----------------------------------|
#
module BasicSkin
  #
  # == Create Default Structure for the this skin
  #
  def self.create_structure
    @prototype ||= begin 
      # create the root structure
      page = ViewComponent.new('app_frame')
      # separate it into 4 parts
      page.header = 'app_header'
      page.main   = 'app_main'
      page.footer = 'app_footer'
    
      # init header: default header accept 3 parts: left, middle, right
      page.header.left   = 'app_logo'
      page.header.right  = 'app_search'
      page.header.center = :menu_bar
      # init footer, default footer accept two rows
      page.footer.row1   = 'app_about_us'
      page.footer.row2   = :simple_menu_bar
      # init body, default body accept five parts: left, right, top, bottom, main
      page.main.top      = :placeholder
      page.main.left     = :side_bar
      page.main.right    = :placeholder
      page.main.bottom   = :placeholder
      page
    end
    @prototype.dup
  end
end