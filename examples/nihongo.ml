(* $Id$ *)

(* �����¹Ԥ�������LANG=ja_JP.EUC�ʤɤȻ��ꤷ�ʤ���Фʤ�ʤ� *)

(* cut-and-paste ���б����Ƥ��ޤ�����edit�Ϥ��ޤ������ޤ��� *)

open Gtk

let window = Window.create `TOPLEVEL
let box = Box.create `VERTICAL
let text = Text.create ()
let font = Gdk.Font.load_fontset
    "-misc-fixed-medium-r-normal--14-*-c-70-iso8859-1, \
     -misc-fixed-medium-r-normal--14-*-jisx0208.1983-0, \
     -misc-fixed-medium-r-normal--14-*-jisx0201.1976-0"

let _ =
  Window.Connect.destroy window cb:Main.quit;
  Window.add window box;
  Box.add box text;
  Widget.realize text;
  Text.insert text "����ˤ���" :font;
  Text.set text editable:true;
  let button = Button.create label:"��λ" in
  let style = Widget.get_style button in
  Style.set style :font;
  Box.add box button;
  Button.Connect.clicked button cb:Main.quit;
  let l = Label.create "����ˤ�ƶ�����" in
  Box.add box l

let _ =
  Window.show_all window;
  Main.main ()
