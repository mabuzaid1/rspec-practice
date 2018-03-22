require 'colorize'
require 'time'

String.disable_colorization = false

module ColorizingThings

  def p_msg(msg,clr=:light_blue,wcr=false,wtime=true)
    strtime = ''
    strtime = "[#{Time.now.strftime('%X')}] ".colorize(:light_cyan) if wtime
    msgout = msg.colorize(clr)
    print strtime + msgout+"\n"
    puts if wcr
  end

  def p_done
    puts "...done\n".colorize(:light_green)
  end

  def p_wrote(n)
    puts " ...#{n}Example...done.".colorize(:light_green)
  end

  def p_str(str,color=:light_green,wcr=false)
    print str.colorize(color)
    puts if wcr
  end

  def fatal_error(msg)
    p_msg "#{msg} EXITING", :red, true
    exit
  end
end