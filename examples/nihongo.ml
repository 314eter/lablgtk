(* $Id$ *)

(* �����¹Ԥ�������LANG=ja_JP.EUC�ʤɤȻ��ꤷ�ʤ���Фʤ�ʤ� *)

(* cut-and-paste ���б����Ƥ��ޤ�����edit�Ϥ��ޤ������ޤ��� *)

open GMain

let window = new GWindow.window `TOPLEVEL
let box = new GPack.box `VERTICAL packing: window#add
let text = new GEdit.text editable: true packing: box#add
let font = Gdk.Font.load_fontset
    "-misc-fixed-medium-r-normal--14-*-c-70-iso8859-1, \
     -misc-fixed-medium-r-normal--14-*-jisx0208.1983-0, \
     -misc-fixed-medium-r-normal--14-*-jisx0201.1976-0"
let button = new GButton.button label: "��λ" packing: box#add
let label = new GMisc.label text:"����ˤ�ƶ�����" packing: box#add

let _ =
  window#connect#destroy callback:Main.quit;
  text#misc#realize ();
  text#insert "����ˤ���" :font;
  let style = button#misc#style in
  Gtk.Style.set style :font;
  Gtk.Style.set_bg style color:(Gdk.Color.alloc (`NAME "green"));
  button#connect#clicked callback:Main.quit

let _ =
  window#show_all ();
  Main.main ()
